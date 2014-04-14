using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Net;
using System.Net.Sockets;
using System.Text;
using System.IO;
using System.Threading;
using System.Drawing;
using System.Runtime.InteropServices;
using System.Security.Cryptography;
using System.Data.SqlClient;
using System.Linq;
using System.Windows.Forms;
using System.IO.Pipes;

namespace HackShieldServer
{
    #region Enums

    public enum ConsoleColor
    {
        FOREGROUND_SIYAH = 0x0000,
        FOREGROUND_MAVI = 0x0001,
        FOREGROUND_YESIL = 0x0002,
        FOREGROUND_CYAN = 0x0003,
        FOREGROUND_KIRMIZI = 0xC,
        FOREGROUND_MOR = 0x0005,
        FOREGROUND_SARI = 0x0006,
        FOREGROUND_BEYAZ = 0x0007,
        FOREGROUND_GRI = 0x0008,
        FOREGROUND_KOYUMAVI = 0x0009,
        FOREGROUND_ACIKYESIL = 0x00001 + 0x0007 + 0x0002,
        FOREGROUND_ACIKKIRMIZI = 0x00001 + 0x0007 + 0x0004,
        FOREGROUND_ACIKSARI = 0x909 + 0x101 + 0x0004,
        FOREGROUND_ACIKBEYAZ = 0x909 + 0x202 + 0x0004,
        FOREGROUND_INTENSITY = 0x0008,
        BACKGROUND_MAVI = 0x0010,
        BACKGROUND_YESIL = 0x0020,
        BACKGROUND_KIRMIZI = 0x0040,
        BACKGROUND_INTENSITY = 0x0080,
        FOREGROUND_TEST = 0xb,
    }

    #endregion

    class Program
    {

        #region WINDOWS API's

[DllImport("kernel32.dll", SetLastError = true)]
        public static extern bool SetConsoleTextAttribute(IntPtr hConsoleOutput, ConsoleColor wAttributes);

[DllImport("kernel32.dll")]
        public static extern IntPtr GetStdHandle(int nStdHandle);

[DllImport("kernel32.dll")]
        public static extern bool SetConsoleTitle(String lpConsoleTitle);

        #endregion

        #region General Object's and Settings

        private static Thread ThreadGeneral = null;

        private static TcpListener TLGeneral = null;

        private static int GatewayPort = 15001;

        private static IntPtr hOut = GetStdHandle(-11);

        #endregion

        #region General Functions

        private static void WriteConsoleWithColor(string Message, ConsoleColor Color)
        {
            SetConsoleTextAttribute(hOut, Color);
            Console.WriteLine(Message);
            SetConsoleTextAttribute(hOut, ConsoleColor.FOREGROUND_ACIKBEYAZ);
        }

        #endregion

        #region Initialize

        protected static void Dispose(bool disposing)
        {
            try
            {
                if (TLGeneral != null)
                {
                    TLGeneral.Stop();
                    TLGeneral = null;
                }
                if (ThreadGeneral != null)
                {
                    ThreadGeneral.Abort();
                    ThreadGeneral = null;
                }
            }
            catch
            {
                TLGeneral = null;
                ThreadGeneral = null;
            }
        }

        static void Main(string[] args)
        {
            
            SetConsoleTitle("Knight Online Gateway v1.0");
            WriteConsoleWithColor("Knight Online Gateway v1.0", ConsoleColor.FOREGROUND_CYAN);
            FileStream dosyamız;
            StreamReader okuma;
            string yol = "Ayar.txt";
            dosyamız = new FileStream(yol, FileMode.Open, FileAccess.Read);
            okuma = new StreamReader(dosyamız); // yolu okuyacak
            if (args.Length < 3)
            {
                
                args = new string[3];

                args[0] = "15002";
                args[1] = okuma.ReadLine();//"127.0.0.1";
                args[2] = "15001";
                StartGateway(int.Parse(args[0]), args[1], int.Parse(args[2]));
                WriteConsoleWithColor("Knight Online Gateway Varsayılan Ayarlar İle Açıldı...", ConsoleColor.FOREGROUND_ACIKKIRMIZI);
            }
            else
            {
                
            }
        }

       

        private static void StartGateway(int KOGatewayPort, string GameServerIPAddress, int GameServerPort)
        {
            bool Whiles = false;

            GatewayPort = KOGatewayPort;

            KnightOnlineGateway.GameServerIPAddress = IPAddress.Parse(GameServerIPAddress);

            KnightOnlineGateway.GameServerPort = GameServerPort;

            try
            {

                TLGeneral = new TcpListener(IPAddress.Any, GatewayPort);
                TLGeneral.Start();

                WriteConsoleWithColor("Knight Online Gateway Başladı...", ConsoleColor.FOREGROUND_YESIL);

                Whiles = true;

            }

            catch
            {
                WriteConsoleWithColor("Game Server Bağlantısı Sağlanılamadı, Knight Online Gateway Başlatılamadı..!", ConsoleColor.FOREGROUND_ACIKKIRMIZI);

                Whiles = false;
            }

            WriteConsoleWithColor("Knight Online Gateway Port : " + GatewayPort.ToString(), ConsoleColor.FOREGROUND_ACIKBEYAZ);
            WriteConsoleWithColor("IP Address : " + GameServerIPAddress, ConsoleColor.FOREGROUND_ACIKBEYAZ);
            WriteConsoleWithColor("Game Server Port : " + GameServerPort, ConsoleColor.FOREGROUND_ACIKBEYAZ);

            if (Whiles)
            {
                while (true)
                {
                    Socket XSocket = TLGeneral.AcceptSocket();
                    KnightOnlineGateway GSync = new KnightOnlineGateway(XSocket);
                    Thread ThreadSync = new Thread(new ThreadStart(GSync.RunWorkerSync));
                    ThreadSync.Start();
                }
            }
        }

        private static void StopGateway()
        {
            try
            {
                if (TLGeneral != null)
                {
                    TLGeneral.Stop();
                    TLGeneral = null;
                }
                if (ThreadGeneral != null)
                {
                    ThreadGeneral.Abort();
                    ThreadGeneral = null;
                }
            }
            catch
            {
                TLGeneral = null;
                ThreadGeneral = null;
            }
        }

        #endregion


    }

    class KnightOnlineGateway
    {
        #region General Object's and Settings

        public static int GameServerPort = 15002;

        public static IPAddress GameServerIPAddress = null;

        private static IntPtr hOut = GetStdHandle(-11);

        private static int MessageArraySize = 1432;

        Socket ClientSocket;

        Byte[] Buffer = null;

        Encoding Default = Encoding.Default;

        #endregion

        #region General Functions

        private static void WriteConsoleWithColor(string Message, ConsoleColor Color)
        {
            SetConsoleTextAttribute(hOut, Color);
            Console.WriteLine(Message);
            SetConsoleTextAttribute(hOut, ConsoleColor.FOREGROUND_ACIKBEYAZ);
        }

        static void WriteLog(string veri)
        {
            StreamWriter dosya;
            dosya = File.AppendText("Log.txt");
            dosya.WriteLine(veri);
            dosya.Close();
        }

        #endregion

        #region WINDOWS API's

[DllImport("kernel32.dll", SetLastError = true)]
        public static extern bool SetConsoleTextAttribute(IntPtr hConsoleOutput, ConsoleColor wAttributes);

[DllImport("kernel32.dll")]
        public static extern IntPtr GetStdHandle(int nStdHandle);

[DllImport("kernel32.dll")]
        public static extern bool SetConsoleTitle(String lpConsoleTitle);

        #endregion

        #region Converter's

        public static string StringToHex(string StringData)
        {
            string hex = "";
            foreach (char c in StringData)
            {
                int tmp = c;
                hex += String.Format("{0:x2}", (uint)System.Convert.ToUInt32(tmp.ToString()));
            }
            return hex;
        }

        public static string HexStringFromByteArray(byte[] Bytes)
        {
            string s = "";

            foreach (byte b in Bytes)
            {
                s += string.Format("{0:X2}", b);
            }

            return s;
        }

        public static byte[] StringToByteArray(string StringData)
        {
            byte[] bytes = new byte[StringData.Length / 2];

            for (int i = 0; i < StringData.Length; i += 2)
            {
                bytes[i / 2] = byte.Parse(StringData[i].ToString() + StringData[i + 1].ToString(), System.Globalization.NumberStyles.HexNumber);
            }

            return bytes;
        }

        private static string HexStringToString(string HEXString)
        {
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i <= HEXString.Length - 2; i += 2)
            {
                sb.Append(Convert.ToString(Convert.ToChar(Int32.Parse(HEXString.Substring(i, 2), System.Globalization.NumberStyles.HexNumber))));
            }
            return sb.ToString();
        }

        private static string IntToHex(int Number)
        {
            string ITHITB = "";

            string NumberToHex = String.Format("{0:x0}", Number);

            try
            {
                if (NumberToHex.Length == 1) ITHITB = "0" + NumberToHex + "00";
                else if (NumberToHex.Length == 2) ITHITB = NumberToHex + "00";
                else if (NumberToHex.Length == 3) ITHITB = NumberToHex.Substring(1, 2) + "0" + NumberToHex.Substring(0, 1);
                else if (NumberToHex.Length == 4) ITHITB = NumberToHex.Substring(2, 2) + NumberToHex.Substring(0, 2);
            }
            catch
            {
                ITHITB = NumberToHex;
            }

            return ITHITB;
        }

        private static string IntToHexAsEightByte(int Number)
        {
            string ITHAEB = "";

            string NumberToHex = String.Format("{0:x0}", Number);

            try
            {
                if (NumberToHex.Length == 1) ITHAEB = "0" + NumberToHex + "000000";
                else if (NumberToHex.Length == 2) ITHAEB = NumberToHex + "000000";
                else if (NumberToHex.Length == 3) ITHAEB = NumberToHex.Substring(1, 2) + "0" + NumberToHex.Substring(0, 1) + "0000";
                else if (NumberToHex.Length == 4) ITHAEB = NumberToHex.Substring(2, 2) + NumberToHex.Substring(0, 2) + "0000";
                else if (NumberToHex.Length == 5) ITHAEB = NumberToHex.Substring(3, 2) + NumberToHex.Substring(1, 2) + "0" + NumberToHex.Substring(0, 1) + "00";
                else if (NumberToHex.Length == 6) ITHAEB = NumberToHex.Substring(4, 2) + NumberToHex.Substring(2, 2) + NumberToHex.Substring(0, 2) + "00";
                else if (NumberToHex.Length == 7) ITHAEB = NumberToHex.Substring(5, 2) + NumberToHex.Substring(4, 2) + NumberToHex.Substring(1, 2) + "0" + NumberToHex.Substring(0, 1);
                else if (NumberToHex.Length == 8) ITHAEB = NumberToHex.Substring(6, 2) + NumberToHex.Substring(4, 2) + NumberToHex.Substring(2, 2) + NumberToHex.Substring(0, 2);
            }
            catch
            {
                ITHAEB = NumberToHex;
            }

            return ITHAEB;
        }

        private static string IntToHexIsOneByte(int Number)
        {
            string ITHITB = "";

            string NumberToHex = String.Format("{0:x0}", Number);

            try
            {
                if (NumberToHex.Length == 1) ITHITB = "0" + NumberToHex;
                else if (NumberToHex.Length == 2) ITHITB = NumberToHex;
                else if (NumberToHex.Length >= 3) ITHITB = "FF"; // Max 255
            }
            catch
            {
                ITHITB = NumberToHex;
            }

            return ITHITB;
        }

        #endregion

        #region Socket Progress

        public KnightOnlineGateway(Socket XSocket)
        {
            this.ClientSocket = XSocket;
        }

        public void RunWorkerSync()
        {
            IPEndPoint IEP = new IPEndPoint(GameServerIPAddress, GameServerPort);
            Socket GameServerSocket = new Socket(AddressFamily.InterNetwork, SocketType.Stream, ProtocolType.Tcp);
            try
            {
                WriteConsoleWithColor("Client Bağlantısı Alındı : " + ((IPEndPoint)ClientSocket.RemoteEndPoint).Address.ToString(), ConsoleColor.FOREGROUND_ACIKSARI);

                try
                {
                    GameServerSocket.Connect(IEP);
                    WriteConsoleWithColor("Game Server Bağlanıldı : " + GameServerIPAddress.ToString() + ":" + GameServerPort.ToString(), ConsoleColor.FOREGROUND_ACIKYESIL);
                }
                catch
                {

                    WriteConsoleWithColor("Client Bağlantısı Alındı fakat Game Server'a Bağlanılamadı : " + GameServerIPAddress.ToString() + ":" + GameServerPort.ToString(), ConsoleColor.FOREGROUND_ACIKKIRMIZI);
                }

                Thread ThreadServerMessage = new Thread(new ThreadStart(delegate { OnGameServerDataReceived(GameServerSocket, ClientSocket); }));
                ThreadServerMessage.Start();

                Thread ThreadClientMessage = new Thread(new ThreadStart(delegate { OnClientDataReceived(GameServerSocket, ClientSocket); }));
                ThreadClientMessage.Start();

                while (GameServerSocket.Connected && ClientSocket.Connected)
                {
                    Thread.Sleep(35);
                }
                OnClientConnect(ClientSocket);
                OnGameServerConnect(GameServerSocket);
            }
            catch
            {
                OnClientConnect(ClientSocket);
                OnGameServerConnect(GameServerSocket);
            }
        }

        private static void OnClientConnect(Socket XSocket)
        {
            if (XSocket.Connected)
            {
                XSocket.Shutdown(SocketShutdown.Both);
                XSocket.Close();
            }
            return;
        }

        private static void OnGameServerConnect(Socket XSocket)
        {
            if (XSocket.Connected)
            {
                XSocket.Shutdown(SocketShutdown.Both);
                XSocket.Close();
            }
            return;
        }

        public void OnClientDataReceived(Socket GameServerSocket, Socket ClientSocket)
        {
            int ReadingBytes = 0;
            try
            {
                do
                {
                    byte[] read = new byte[MessageArraySize];
                    String ClientMessage = String.Empty;
                    ReadingBytes = ReadMessage(read, ref ClientSocket, ref ClientMessage);
                    byte[] ClientMessageByte = System.Text.Encoding.Default.GetBytes(ClientMessage);
                    string paket = "";
                    string str = HexStringFromByteArray(ClientMessageByte);
                    str = str.TrimEnd('0');
                    char[] arr;
                    string veri = str;
                    arr = veri.ToCharArray(8, 2);
                    paket = new string(arr);
                    string PaketBas = "AA55";
                    string PaketSon = "55AA";
                    switch (paket)
                    {
                        case "2B":
                            ClientSocket.Disconnect(true);
                            WriteConsoleWithColor("Eski Login Paketi Gönderildi", ConsoleColor.FOREGROUND_ACIKYESIL);
                            break;
                        case "77":
                            byte[] Login = StringToByteArray(PaketBas + "06002B" + "C0" + "21" + "01" + "00" + "71" + PaketSon);
                            GameServerSocket.Send(Login, Login.Length, 0);
                            WriteConsoleWithColor("Yeni Login Paketi Gönderildi.", ConsoleColor.FOREGROUND_ACIKYESIL);
                            break;
                            // Senin Şifrelemeye başlıcam yarın tmm dur hemen gösterem
                        default:
                            GameServerSocket.Send(ClientMessageByte, ReadingBytes, 0);
                            break;
                    }
                    WriteLog("RECV-->" + veri);
                }
                while (ReadingBytes > 0);
                OnClientConnect(ClientSocket);
                OnGameServerConnect(GameServerSocket);
            }
            catch
            {
                OnClientConnect(ClientSocket);
                OnGameServerConnect(GameServerSocket);
            }
        }

        public void OnGameServerDataReceived(Socket GameServerSocket, Socket ClientSocket)
        {
            int ReadingBytes = 0;

            try
            {
                do
                {
                    byte[] Read = new byte[MessageArraySize];
                    String ServerMessage = String.Empty;
                    ReadingBytes = ReadMessage(Read, ref GameServerSocket, ref ServerMessage);
                    byte[] ServerMessageByte = System.Text.Encoding.Default.GetBytes(ServerMessage);
                    string paket = "";
                    string str = HexStringFromByteArray(ServerMessageByte);
                    str = str.TrimEnd('0');
                    char[] arr;
                    string veri = str;
                    arr = veri.ToCharArray(4, 6);
                    paket = new string(arr);
                    string PaketBas = "AA55";
                    string PaketSon = "55AA";
                    switch (paket)
                    {
                        /*
Ebenezerden giden pakete göre,
GameServer giden paketi degistirme.
*/
                        default:
                            ClientSocket.Send(ServerMessageByte, ReadingBytes, 0);
                            break;
                    }
                    WriteLog("SEND-->" + veri);
        #endregion

                }

                while (ReadingBytes > 0);
                OnClientConnect(ClientSocket);
                OnGameServerConnect(GameServerSocket);
            }
            catch
            {
                OnClientConnect(ClientSocket);
                OnGameServerConnect(GameServerSocket);
            }
        }

        private static int ReadMessage(byte[] ByteArray, ref Socket XSocket, ref String ClientMessage)
        {
            int bytes = 0;
            try
            {
                bytes = XSocket.Receive(ByteArray, MessageArraySize, 0);
            }
            catch
            {
                OnClientConnect(XSocket);
            }
            string messagefromclient = Encoding.Default.GetString(ByteArray);
            ClientMessage = (String)messagefromclient;
            return bytes;
        }

        private void SendMessage(Socket XSocket, string Message)
        {
            int bufferlength = Message.Length + 1;
            try
            {
                Buffer = new Byte[bufferlength];
                int length = Default.GetBytes(Message, 0, Message.Length, Buffer, 0);
                XSocket.Send(Buffer, length, 0);
            }
            catch
            {
                OnClientConnect(ClientSocket);
            }
        }
    }
}
