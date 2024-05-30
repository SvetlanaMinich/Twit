; ModuleID = 'marshal_methods.x86.ll'
source_filename = "marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [227 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [454 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 167
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 166
	i32 26230656, ; 2: Microsoft.Extensions.DependencyModel => 0x1903f80 => 67
	i32 38948123, ; 3: ar\Microsoft.Maui.Controls.resources.dll => 0x2524d1b => 10
	i32 42244203, ; 4: he\Microsoft.Maui.Controls.resources.dll => 0x284986b => 19
	i32 42639949, ; 5: System.Threading.Thread => 0x28aa24d => 211
	i32 57725457, ; 6: it\Microsoft.Data.SqlClient.resources => 0x370d211 => 3
	i32 57727992, ; 7: ja\Microsoft.Data.SqlClient.resources => 0x370dbf8 => 4
	i32 66541672, ; 8: System.Diagnostics.StackTrace => 0x3f75868 => 148
	i32 67008169, ; 9: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 43
	i32 68219467, ; 10: System.Security.Cryptography.Primitives => 0x410f24b => 200
	i32 72070932, ; 11: Microsoft.Maui.Graphics.dll => 0x44bb714 => 85
	i32 83839681, ; 12: ms\Microsoft.Maui.Controls.resources.dll => 0x4ff4ac1 => 27
	i32 117431740, ; 13: System.Runtime.InteropServices => 0x6ffddbc => 186
	i32 122350210, ; 14: System.Threading.Channels.dll => 0x74aea82 => 209
	i32 136584136, ; 15: zh-Hans\Microsoft.Maui.Controls.resources.dll => 0x8241bc8 => 42
	i32 140062828, ; 16: sk\Microsoft.Maui.Controls.resources.dll => 0x859306c => 35
	i32 142721839, ; 17: System.Net.WebHeaderCollection => 0x881c32f => 174
	i32 149972175, ; 18: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 200
	i32 159306688, ; 19: System.ComponentModel.Annotations => 0x97ed3c0 => 139
	i32 165246403, ; 20: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 102
	i32 182336117, ; 21: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 120
	i32 205061960, ; 22: System.ComponentModel => 0xc38ff48 => 142
	i32 209399409, ; 23: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 100
	i32 230752869, ; 24: Microsoft.CSharp.dll => 0xdc10265 => 131
	i32 246610117, ; 25: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 183
	i32 264223668, ; 26: zh-Hans\Microsoft.Data.SqlClient.resources => 0xfbfbbb4 => 8
	i32 272650997, ; 27: ko\Microsoft.Data.SqlClient.resources.dll => 0x104052f5 => 5
	i32 317674968, ; 28: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 40
	i32 318968648, ; 29: Xamarin.AndroidX.Activity.dll => 0x13031348 => 97
	i32 321597661, ; 30: System.Numerics => 0x132b30dd => 176
	i32 321963286, ; 31: fr\Microsoft.Maui.Controls.resources.dll => 0x1330c516 => 18
	i32 330147069, ; 32: Microsoft.SqlServer.Server => 0x13ada4fd => 86
	i32 342366114, ; 33: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 109
	i32 347068432, ; 34: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 89
	i32 367780167, ; 35: System.IO.Pipes => 0x15ebe147 => 159
	i32 374914964, ; 36: System.Transactions.Local => 0x1658bf94 => 214
	i32 375677976, ; 37: System.Net.ServicePoint.dll => 0x16646418 => 171
	i32 379916513, ; 38: System.Threading.Thread.dll => 0x16a510e1 => 211
	i32 385762202, ; 39: System.Memory.dll => 0x16fe439a => 163
	i32 392610295, ; 40: System.Threading.ThreadPool.dll => 0x1766c1f7 => 212
	i32 395744057, ; 41: _Microsoft.Android.Resource.Designer => 0x17969339 => 44
	i32 403493213, ; 42: MediatR.Contracts => 0x180cd15d => 51
	i32 409257351, ; 43: tr\Microsoft.Maui.Controls.resources.dll => 0x1864c587 => 38
	i32 442521989, ; 44: Xamarin.Essentials => 0x1a605985 => 123
	i32 442565967, ; 45: System.Collections => 0x1a61054f => 138
	i32 450948140, ; 46: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 108
	i32 451504562, ; 47: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 201
	i32 456227837, ; 48: System.Web.HttpUtility.dll => 0x1b317bfd => 215
	i32 459347974, ; 49: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 191
	i32 465846621, ; 50: mscorlib => 0x1bc4415d => 221
	i32 469710990, ; 51: System.dll => 0x1bff388e => 220
	i32 485463106, ; 52: Microsoft.IdentityModel.Abstractions => 0x1cef9442 => 74
	i32 489220957, ; 53: es\Microsoft.Maui.Controls.resources.dll => 0x1d28eb5d => 16
	i32 498788369, ; 54: System.ObjectModel => 0x1dbae811 => 177
	i32 513247710, ; 55: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 71
	i32 530272170, ; 56: System.Linq.Queryable => 0x1f9b4faa => 161
	i32 535369068, ; 57: fr\Microsoft.Data.SqlClient.resources.dll => 0x1fe9156c => 2
	i32 538707440, ; 58: th\Microsoft.Maui.Controls.resources.dll => 0x201c05f0 => 37
	i32 539058512, ; 59: Microsoft.Extensions.Logging => 0x20216150 => 68
	i32 546455878, ; 60: System.Runtime.Serialization.Xml => 0x20924146 => 192
	i32 547209430, ; 61: ja\Microsoft.Data.SqlClient.resources.dll => 0x209dc0d6 => 4
	i32 548916678, ; 62: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 52
	i32 577335427, ; 63: System.Security.Cryptography.Cng => 0x22697083 => 197
	i32 597488923, ; 64: CommunityToolkit.Maui => 0x239cf51b => 47
	i32 613668793, ; 65: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 196
	i32 627609679, ; 66: Xamarin.AndroidX.CustomView => 0x2568904f => 106
	i32 627931235, ; 67: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 29
	i32 662205335, ; 68: System.Text.Encodings.Web.dll => 0x27787397 => 206
	i32 672442732, ; 69: System.Collections.Concurrent => 0x2814a96c => 134
	i32 683518922, ; 70: System.Net.Security => 0x28bdabca => 170
	i32 690569205, ; 71: System.Xml.Linq.dll => 0x29293ff5 => 216
	i32 722857257, ; 72: System.Runtime.Loader.dll => 0x2b15ed29 => 187
	i32 748832960, ; 73: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 87
	i32 759454413, ; 74: System.Net.Requests => 0x2d445acd => 169
	i32 762598435, ; 75: System.IO.Pipes.dll => 0x2d745423 => 159
	i32 775507847, ; 76: System.IO.Compression => 0x2e394f87 => 156
	i32 777317022, ; 77: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 35
	i32 789151979, ; 78: Microsoft.Extensions.Options => 0x2f0980eb => 70
	i32 804715423, ; 79: System.Data.Common => 0x2ff6fb9f => 145
	i32 823281589, ; 80: System.Private.Uri.dll => 0x311247b5 => 179
	i32 830298997, ; 81: System.IO.Compression.Brotli => 0x317d5b75 => 155
	i32 837166451, ; 82: TwitterAnal.Persistense => 0x31e62573 => 129
	i32 869139383, ; 83: hi\Microsoft.Maui.Controls.resources.dll => 0x33ce03b7 => 20
	i32 880668424, ; 84: ru\Microsoft.Maui.Controls.resources.dll => 0x347def08 => 34
	i32 904024072, ; 85: System.ComponentModel.Primitives.dll => 0x35e25008 => 140
	i32 918734561, ; 86: pt-BR\Microsoft.Maui.Controls.resources.dll => 0x36c2c6e1 => 31
	i32 956528696, ; 87: zh-Hans\Microsoft.Data.SqlClient.resources.dll => 0x39037838 => 8
	i32 961460050, ; 88: it\Microsoft.Maui.Controls.resources.dll => 0x394eb752 => 24
	i32 967690846, ; 89: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 109
	i32 975236339, ; 90: System.Diagnostics.Tracing => 0x3a20ecf3 => 151
	i32 975874589, ; 91: System.Xml.XDocument => 0x3a2aaa1d => 218
	i32 986514023, ; 92: System.Private.DataContractSerialization.dll => 0x3acd0267 => 178
	i32 990727110, ; 93: ro\Microsoft.Maui.Controls.resources.dll => 0x3b0d4bc6 => 33
	i32 992768348, ; 94: System.Collections.dll => 0x3b2c715c => 138
	i32 1012816738, ; 95: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 119
	i32 1019214401, ; 96: System.Drawing => 0x3cbffa41 => 153
	i32 1028951442, ; 97: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 66
	i32 1035644815, ; 98: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 98
	i32 1036536393, ; 99: System.Drawing.Primitives.dll => 0x3dc84a49 => 152
	i32 1043950537, ; 100: de\Microsoft.Maui.Controls.resources.dll => 0x3e396bc9 => 14
	i32 1044663988, ; 101: System.Linq.Expressions.dll => 0x3e444eb4 => 160
	i32 1052210849, ; 102: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 111
	i32 1062017875, ; 103: Microsoft.Identity.Client.Extensions.Msal => 0x3f4d1b53 => 73
	i32 1082857460, ; 104: System.ComponentModel.TypeConverter => 0x408b17f4 => 141
	i32 1084122840, ; 105: Xamarin.Kotlin.StdLib => 0x409e66d8 => 125
	i32 1089913930, ; 106: System.Diagnostics.EventLog.dll => 0x40f6c44a => 92
	i32 1098259244, ; 107: System => 0x41761b2c => 220
	i32 1108272742, ; 108: sv\Microsoft.Maui.Controls.resources.dll => 0x420ee666 => 36
	i32 1113123738, ; 109: TwitterAnal.Application => 0x4258eb9a => 127
	i32 1117529484, ; 110: pl\Microsoft.Maui.Controls.resources.dll => 0x429c258c => 30
	i32 1118262833, ; 111: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 26
	i32 1138436374, ; 112: Microsoft.Data.SqlClient.dll => 0x43db2916 => 53
	i32 1157931901, ; 113: Microsoft.EntityFrameworkCore.Abstractions => 0x4504a37d => 56
	i32 1168523401, ; 114: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 32
	i32 1178241025, ; 115: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 116
	i32 1202000627, ; 116: Microsoft.EntityFrameworkCore.Abstractions.dll => 0x47a512f3 => 56
	i32 1204575371, ; 117: Microsoft.Extensions.Caching.Memory.dll => 0x47cc5c8b => 61
	i32 1208641965, ; 118: System.Diagnostics.Process => 0x480a69ad => 147
	i32 1214827643, ; 119: CommunityToolkit.Mvvm => 0x4868cc7b => 49
	i32 1260983243, ; 120: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 12
	i32 1292207520, ; 121: SQLitePCLRaw.core.dll => 0x4d0585a0 => 88
	i32 1293217323, ; 122: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 107
	i32 1308624726, ; 123: hr\Microsoft.Maui.Controls.resources.dll => 0x4e000756 => 21
	i32 1309188875, ; 124: System.Private.DataContractSerialization => 0x4e08a30b => 178
	i32 1324164729, ; 125: System.Linq => 0x4eed2679 => 162
	i32 1335329327, ; 126: System.Runtime.Serialization.Json.dll => 0x4f97822f => 190
	i32 1336711579, ; 127: zh-HK\Microsoft.Maui.Controls.resources.dll => 0x4fac999b => 41
	i32 1373134921, ; 128: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 42
	i32 1376866003, ; 129: Xamarin.AndroidX.SavedState => 0x52114ed3 => 119
	i32 1406073936, ; 130: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 103
	i32 1408764838, ; 131: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 189
	i32 1430672901, ; 132: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 10
	i32 1452070440, ; 133: System.Formats.Asn1.dll => 0x568cd628 => 154
	i32 1458022317, ; 134: System.Net.Security.dll => 0x56e7a7ad => 170
	i32 1460893475, ; 135: System.IdentityModel.Tokens.Jwt => 0x57137723 => 93
	i32 1461004990, ; 136: es\Microsoft.Maui.Controls.resources => 0x57152abe => 16
	i32 1461234159, ; 137: System.Collections.Immutable.dll => 0x5718a9ef => 135
	i32 1462112819, ; 138: System.IO.Compression.dll => 0x57261233 => 156
	i32 1469204771, ; 139: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 99
	i32 1470490898, ; 140: Microsoft.Extensions.Primitives => 0x57a5e912 => 71
	i32 1479771757, ; 141: System.Collections.Immutable => 0x5833866d => 135
	i32 1480492111, ; 142: System.IO.Compression.Brotli.dll => 0x583e844f => 155
	i32 1487239319, ; 143: Microsoft.Win32.Primitives => 0x58a57897 => 132
	i32 1490351284, ; 144: Microsoft.Data.Sqlite.dll => 0x58d4f4b4 => 54
	i32 1498168481, ; 145: Microsoft.IdentityModel.JsonWebTokens.dll => 0x594c3ca1 => 75
	i32 1526286932, ; 146: vi\Microsoft.Maui.Controls.resources.dll => 0x5af94a54 => 40
	i32 1536373174, ; 147: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 149
	i32 1543031311, ; 148: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 208
	i32 1565310744, ; 149: System.Runtime.Caching => 0x5d4cbf18 => 95
	i32 1573704789, ; 150: System.Runtime.Serialization.Json => 0x5dccd455 => 190
	i32 1582305585, ; 151: Azure.Identity => 0x5e501131 => 46
	i32 1596263029, ; 152: zh-Hant\Microsoft.Data.SqlClient.resources => 0x5f250a75 => 9
	i32 1604827217, ; 153: System.Net.WebClient => 0x5fa7b851 => 173
	i32 1622152042, ; 154: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 113
	i32 1624863272, ; 155: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 122
	i32 1628113371, ; 156: Microsoft.IdentityModel.Protocols.OpenIdConnect => 0x610b09db => 78
	i32 1632842087, ; 157: Microsoft.Extensions.Configuration.Json => 0x61533167 => 64
	i32 1634654947, ; 158: CommunityToolkit.Maui.Core.dll => 0x616edae3 => 48
	i32 1636350590, ; 159: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 105
	i32 1639515021, ; 160: System.Net.Http.dll => 0x61b9038d => 164
	i32 1639986890, ; 161: System.Text.RegularExpressions => 0x61c036ca => 208
	i32 1657153582, ; 162: System.Runtime => 0x62c6282e => 193
	i32 1658251792, ; 163: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 124
	i32 1677501392, ; 164: System.Net.Primitives.dll => 0x63fca3d0 => 168
	i32 1679769178, ; 165: System.Security.Cryptography => 0x641f3e5a => 202
	i32 1688112883, ; 166: Microsoft.Data.Sqlite => 0x649e8ef3 => 54
	i32 1689493916, ; 167: Microsoft.EntityFrameworkCore.dll => 0x64b3a19c => 55
	i32 1696967625, ; 168: System.Security.Cryptography.Csp => 0x6525abc9 => 198
	i32 1711441057, ; 169: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 89
	i32 1729485958, ; 170: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 101
	i32 1743415430, ; 171: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 11
	i32 1744735666, ; 172: System.Transactions.Local.dll => 0x67fe8db2 => 214
	i32 1750313021, ; 173: Microsoft.Win32.Primitives.dll => 0x6853a83d => 132
	i32 1763938596, ; 174: System.Diagnostics.TraceSource.dll => 0x69239124 => 150
	i32 1766324549, ; 175: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 120
	i32 1770582343, ; 176: Microsoft.Extensions.Logging.dll => 0x6988f147 => 68
	i32 1776026572, ; 177: System.Core.dll => 0x69dc03cc => 144
	i32 1780572499, ; 178: Mono.Android.Runtime.dll => 0x6a216153 => 225
	i32 1782862114, ; 179: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 27
	i32 1788241197, ; 180: Xamarin.AndroidX.Fragment => 0x6a96652d => 108
	i32 1793755602, ; 181: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 19
	i32 1794500907, ; 182: Microsoft.Identity.Client.dll => 0x6af5e92b => 72
	i32 1796167890, ; 183: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 52
	i32 1798832757, ; 184: es\Microsoft.Data.SqlClient.resources.dll => 0x6b380275 => 1
	i32 1808609942, ; 185: Xamarin.AndroidX.Loader => 0x6bcd3296 => 113
	i32 1813058853, ; 186: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 125
	i32 1813201214, ; 187: Xamarin.Google.Android.Material => 0x6c13413e => 124
	i32 1818569960, ; 188: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 117
	i32 1824175904, ; 189: System.Text.Encoding.Extensions => 0x6cbab720 => 205
	i32 1824722060, ; 190: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 189
	i32 1824744702, ; 191: ru\Microsoft.Data.SqlClient.resources.dll => 0x6cc364fe => 7
	i32 1827458547, ; 192: TwitterAnal.Domain => 0x6ceccdf3 => 128
	i32 1828688058, ; 193: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 69
	i32 1853025655, ; 194: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 36
	i32 1858542181, ; 195: System.Linq.Expressions => 0x6ec71a65 => 160
	i32 1867746548, ; 196: Xamarin.Essentials.dll => 0x6f538cf4 => 123
	i32 1870277092, ; 197: System.Reflection.Primitives => 0x6f7a29e4 => 184
	i32 1871986876, ; 198: Microsoft.IdentityModel.Protocols.OpenIdConnect.dll => 0x6f9440bc => 78
	i32 1875935024, ; 199: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 18
	i32 1886040351, ; 200: Microsoft.EntityFrameworkCore.Sqlite.dll => 0x706ab11f => 58
	i32 1893218855, ; 201: cs\Microsoft.Maui.Controls.resources.dll => 0x70d83a27 => 12
	i32 1910275211, ; 202: System.Collections.NonGeneric.dll => 0x71dc7c8b => 136
	i32 1939592360, ; 203: System.Private.Xml.Linq => 0x739bd4a8 => 180
	i32 1939757378, ; 204: TwitterAnal.Domain.dll => 0x739e5942 => 128
	i32 1953182387, ; 205: id\Microsoft.Maui.Controls.resources.dll => 0x746b32b3 => 23
	i32 1968388702, ; 206: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 62
	i32 1986222447, ; 207: Microsoft.IdentityModel.Tokens.dll => 0x7663596f => 79
	i32 2003115576, ; 208: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 15
	i32 2011961780, ; 209: System.Buffers.dll => 0x77ec19b4 => 133
	i32 2014489277, ; 210: Microsoft.EntityFrameworkCore.Sqlite => 0x7812aabd => 58
	i32 2019465201, ; 211: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 111
	i32 2040764568, ; 212: Microsoft.Identity.Client.Extensions.Msal.dll => 0x79a39898 => 73
	i32 2045470958, ; 213: System.Private.Xml => 0x79eb68ee => 181
	i32 2055257422, ; 214: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 110
	i32 2066184531, ; 215: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 14
	i32 2070888862, ; 216: System.Diagnostics.TraceSource => 0x7b6f419e => 150
	i32 2079903147, ; 217: System.Runtime.dll => 0x7bf8cdab => 193
	i32 2090596640, ; 218: System.Numerics.Vectors => 0x7c9bf920 => 175
	i32 2103459038, ; 219: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 90
	i32 2127167465, ; 220: System.Console => 0x7ec9ffe9 => 143
	i32 2131193692, ; 221: pt-BR\Microsoft.Data.SqlClient.resources.dll => 0x7f076f5c => 6
	i32 2134056115, ; 222: zh-Hant\Microsoft.Data.SqlClient.resources.dll => 0x7f331cb3 => 9
	i32 2142473426, ; 223: System.Collections.Specialized => 0x7fb38cd2 => 137
	i32 2143790110, ; 224: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 219
	i32 2159891885, ; 225: Microsoft.Maui => 0x80bd55ad => 83
	i32 2169148018, ; 226: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 22
	i32 2181898931, ; 227: Microsoft.Extensions.Options.dll => 0x820d22b3 => 70
	i32 2192057212, ; 228: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 69
	i32 2193016926, ; 229: System.ObjectModel.dll => 0x82b6c85e => 177
	i32 2197979891, ; 230: Microsoft.Extensions.DependencyModel.dll => 0x830282f3 => 67
	i32 2201107256, ; 231: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 126
	i32 2201231467, ; 232: System.Net.Http => 0x8334206b => 164
	i32 2207618523, ; 233: it\Microsoft.Maui.Controls.resources => 0x839595db => 24
	i32 2228745826, ; 234: pt-BR\Microsoft.Data.SqlClient.resources => 0x84d7f662 => 6
	i32 2252897993, ; 235: Microsoft.EntityFrameworkCore => 0x86487ec9 => 55
	i32 2253551641, ; 236: Microsoft.IdentityModel.Protocols => 0x86527819 => 77
	i32 2265110946, ; 237: System.Security.AccessControl.dll => 0x8702d9a2 => 194
	i32 2266799131, ; 238: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 63
	i32 2279755925, ; 239: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 118
	i32 2295906218, ; 240: System.Net.Sockets => 0x88d8bfaa => 172
	i32 2298471582, ; 241: System.Net.Mail => 0x88ffe49e => 165
	i32 2303942373, ; 242: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 28
	i32 2305521784, ; 243: System.Private.CoreLib.dll => 0x896b7878 => 223
	i32 2309278602, ; 244: ko\Microsoft.Data.SqlClient.resources => 0x89a4cb8a => 5
	i32 2340441535, ; 245: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 185
	i32 2353062107, ; 246: System.Net.Primitives => 0x8c40e0db => 168
	i32 2366048013, ; 247: hu\Microsoft.Maui.Controls.resources.dll => 0x8d07070d => 22
	i32 2368005991, ; 248: System.Xml.ReaderWriter.dll => 0x8d24e767 => 217
	i32 2369706906, ; 249: Microsoft.IdentityModel.Logging => 0x8d3edb9a => 76
	i32 2371007202, ; 250: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 62
	i32 2378619854, ; 251: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 198
	i32 2383496789, ; 252: System.Security.Principal.Windows.dll => 0x8e114655 => 203
	i32 2395872292, ; 253: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 23
	i32 2401565422, ; 254: System.Web.HttpUtility => 0x8f24faee => 215
	i32 2427813419, ; 255: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 20
	i32 2435356389, ; 256: System.Console.dll => 0x912896e5 => 143
	i32 2458678730, ; 257: System.Net.Sockets.dll => 0x928c75ca => 172
	i32 2465273461, ; 258: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 87
	i32 2471841756, ; 259: netstandard.dll => 0x93554fdc => 222
	i32 2475788418, ; 260: Java.Interop.dll => 0x93918882 => 224
	i32 2480646305, ; 261: Microsoft.Maui.Controls => 0x93dba8a1 => 81
	i32 2484371297, ; 262: System.Net.ServicePoint => 0x94147f61 => 171
	i32 2503351294, ; 263: ko\Microsoft.Maui.Controls.resources.dll => 0x95361bfe => 26
	i32 2509217888, ; 264: System.Diagnostics.EventLog => 0x958fa060 => 92
	i32 2538310050, ; 265: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 183
	i32 2540434582, ; 266: de\Microsoft.Data.SqlClient.resources.dll => 0x976bf496 => 0
	i32 2550873716, ; 267: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 21
	i32 2562349572, ; 268: Microsoft.CSharp => 0x98ba5a04 => 131
	i32 2570120770, ; 269: System.Text.Encodings.Web => 0x9930ee42 => 206
	i32 2576534780, ; 270: ja\Microsoft.Maui.Controls.resources.dll => 0x9992ccfc => 25
	i32 2585220780, ; 271: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 205
	i32 2589602615, ; 272: System.Threading.ThreadPool => 0x9a5a3337 => 212
	i32 2593496499, ; 273: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 30
	i32 2605712449, ; 274: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 126
	i32 2615519321, ; 275: MediatR => 0x9be5a859 => 50
	i32 2617129537, ; 276: System.Private.Xml.dll => 0x9bfe3a41 => 181
	i32 2620871830, ; 277: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 105
	i32 2626831493, ; 278: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 25
	i32 2627185994, ; 279: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 149
	i32 2628210652, ; 280: System.Memory.Data => 0x9ca74fdc => 94
	i32 2634653062, ; 281: Microsoft.EntityFrameworkCore.Relational.dll => 0x9d099d86 => 57
	i32 2640290731, ; 282: Microsoft.IdentityModel.Logging.dll => 0x9d5fa3ab => 76
	i32 2640706905, ; 283: Azure.Core => 0x9d65fd59 => 45
	i32 2660759594, ; 284: System.Security.Cryptography.ProtectedData.dll => 0x9e97f82a => 96
	i32 2663698177, ; 285: System.Runtime.Loader => 0x9ec4cf01 => 187
	i32 2664396074, ; 286: System.Xml.XDocument.dll => 0x9ecf752a => 218
	i32 2665622720, ; 287: System.Drawing.Primitives => 0x9ee22cc0 => 152
	i32 2676780864, ; 288: System.Data.Common.dll => 0x9f8c6f40 => 145
	i32 2677098746, ; 289: Azure.Identity.dll => 0x9f9148fa => 46
	i32 2677943566, ; 290: MediatR.Contracts.dll => 0x9f9e2d0e => 51
	i32 2686887180, ; 291: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 192
	i32 2717744543, ; 292: System.Security.Claims => 0xa1fd7d9f => 195
	i32 2719963679, ; 293: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 197
	i32 2724373263, ; 294: System.Runtime.Numerics.dll => 0xa262a30f => 188
	i32 2732626843, ; 295: Xamarin.AndroidX.Activity => 0xa2e0939b => 97
	i32 2735172069, ; 296: System.Threading.Channels => 0xa30769e5 => 209
	i32 2737747696, ; 297: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 99
	i32 2740051746, ; 298: Microsoft.Identity.Client => 0xa351df22 => 72
	i32 2740698338, ; 299: ca\Microsoft.Maui.Controls.resources.dll => 0xa35bbce2 => 11
	i32 2752995522, ; 300: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 31
	i32 2755098380, ; 301: Microsoft.SqlServer.Server.dll => 0xa437770c => 86
	i32 2755643133, ; 302: Microsoft.EntityFrameworkCore.SqlServer => 0xa43fc6fd => 59
	i32 2758225723, ; 303: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 82
	i32 2764765095, ; 304: Microsoft.Maui.dll => 0xa4caf7a7 => 83
	i32 2765824710, ; 305: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 204
	i32 2778768386, ; 306: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 121
	i32 2785988530, ; 307: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 37
	i32 2801831435, ; 308: Microsoft.Maui.Graphics => 0xa7008e0b => 85
	i32 2810250172, ; 309: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 103
	i32 2847789619, ; 310: Microsoft.EntityFrameworkCore.Relational => 0xa9bdd233 => 57
	i32 2853208004, ; 311: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 121
	i32 2861189240, ; 312: Microsoft.Maui.Essentials => 0xaa8a4878 => 84
	i32 2867946736, ; 313: System.Security.Cryptography.ProtectedData => 0xaaf164f0 => 96
	i32 2868488919, ; 314: CommunityToolkit.Maui.Core => 0xaaf9aad7 => 48
	i32 2905242038, ; 315: mscorlib.dll => 0xad2a79b6 => 221
	i32 2909740682, ; 316: System.Private.CoreLib => 0xad6f1e8a => 223
	i32 2916838712, ; 317: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 122
	i32 2919462931, ; 318: System.Numerics.Vectors.dll => 0xae037813 => 175
	i32 2940926066, ; 319: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 148
	i32 2944313911, ; 320: System.Configuration.ConfigurationManager.dll => 0xaf7eaa37 => 91
	i32 2959614098, ; 321: System.ComponentModel.dll => 0xb0682092 => 142
	i32 2968338931, ; 322: System.Security.Principal.Windows => 0xb0ed41f3 => 203
	i32 2972252294, ; 323: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 196
	i32 2978675010, ; 324: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 107
	i32 3012788804, ; 325: System.Configuration.ConfigurationManager => 0xb3938244 => 91
	i32 3023511517, ; 326: ru\Microsoft.Data.SqlClient.resources => 0xb4371fdd => 7
	i32 3033605958, ; 327: System.Memory.Data.dll => 0xb4d12746 => 94
	i32 3038032645, ; 328: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 44
	i32 3053864966, ; 329: fi\Microsoft.Maui.Controls.resources.dll => 0xb6064806 => 17
	i32 3057625584, ; 330: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 114
	i32 3059408633, ; 331: Mono.Android.Runtime => 0xb65adef9 => 225
	i32 3059793426, ; 332: System.ComponentModel.Primitives => 0xb660be12 => 140
	i32 3069363400, ; 333: Microsoft.Extensions.Caching.Abstractions.dll => 0xb6f2c4c8 => 60
	i32 3070224510, ; 334: TwitterAnal.UI => 0xb6ffe87e => 130
	i32 3084678329, ; 335: Microsoft.IdentityModel.Tokens => 0xb7dc74b9 => 79
	i32 3090735792, ; 336: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 201
	i32 3099732863, ; 337: System.Security.Claims.dll => 0xb8c22b7f => 195
	i32 3103600923, ; 338: System.Formats.Asn1 => 0xb8fd311b => 154
	i32 3121463068, ; 339: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 157
	i32 3124832203, ; 340: System.Threading.Tasks.Extensions => 0xba4127cb => 210
	i32 3132293585, ; 341: System.Security.AccessControl => 0xbab301d1 => 194
	i32 3147165239, ; 342: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 151
	i32 3159123045, ; 343: System.Reflection.Primitives.dll => 0xbc4c6465 => 184
	i32 3178803400, ; 344: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 115
	i32 3195844289, ; 345: Microsoft.Extensions.Caching.Abstractions => 0xbe7cb6c1 => 60
	i32 3220365878, ; 346: System.Threading => 0xbff2e236 => 213
	i32 3258312781, ; 347: Xamarin.AndroidX.CardView => 0xc235e84d => 101
	i32 3265493905, ; 348: System.Linq.Queryable.dll => 0xc2a37b91 => 161
	i32 3265893370, ; 349: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 210
	i32 3280506390, ; 350: System.ComponentModel.Annotations.dll => 0xc3888e16 => 139
	i32 3290767353, ; 351: System.Security.Cryptography.Encoding => 0xc4251ff9 => 199
	i32 3305363605, ; 352: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 17
	i32 3312457198, ; 353: Microsoft.IdentityModel.JsonWebTokens => 0xc57015ee => 75
	i32 3316684772, ; 354: System.Net.Requests.dll => 0xc5b097e4 => 169
	i32 3317135071, ; 355: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 106
	i32 3343947874, ; 356: fr\Microsoft.Data.SqlClient.resources => 0xc7509862 => 2
	i32 3346324047, ; 357: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 116
	i32 3357674450, ; 358: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 34
	i32 3358260929, ; 359: System.Text.Json => 0xc82afec1 => 207
	i32 3360279109, ; 360: SQLitePCLRaw.core => 0xc849ca45 => 88
	i32 3362522851, ; 361: Xamarin.AndroidX.Core => 0xc86c06e3 => 104
	i32 3366347497, ; 362: Java.Interop => 0xc8a662e9 => 224
	i32 3374879918, ; 363: Microsoft.IdentityModel.Protocols.dll => 0xc92894ae => 77
	i32 3374999561, ; 364: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 118
	i32 3376360557, ; 365: TwitterAnal.UI.dll => 0xc93f2c6d => 130
	i32 3381016424, ; 366: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 13
	i32 3428513518, ; 367: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 65
	i32 3430777524, ; 368: netstandard => 0xcc7d82b4 => 222
	i32 3452344032, ; 369: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 80
	i32 3458724246, ; 370: pt\Microsoft.Maui.Controls.resources.dll => 0xce27f196 => 32
	i32 3471940407, ; 371: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 141
	i32 3476120550, ; 372: Mono.Android => 0xcf3163e6 => 226
	i32 3484440000, ; 373: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 33
	i32 3485117614, ; 374: System.Text.Json.dll => 0xcfbaacae => 207
	i32 3501707486, ; 375: TwitterAnal.Persistense.dll => 0xd0b7d0de => 129
	i32 3509114376, ; 376: System.Xml.Linq => 0xd128d608 => 216
	i32 3545306353, ; 377: Microsoft.Data.SqlClient => 0xd35114f1 => 53
	i32 3555084973, ; 378: de\Microsoft.Data.SqlClient.resources => 0xd3e64aad => 0
	i32 3561949811, ; 379: Azure.Core.dll => 0xd44f0a73 => 45
	i32 3570554715, ; 380: System.IO.FileSystem.AccessControl => 0xd4d2575b => 157
	i32 3570608287, ; 381: System.Runtime.Caching.dll => 0xd4d3289f => 95
	i32 3580758918, ; 382: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 41
	i32 3592228221, ; 383: zh-Hant\Microsoft.Maui.Controls.resources.dll => 0xd61d0d7d => 43
	i32 3608519521, ; 384: System.Linq.dll => 0xd715a361 => 162
	i32 3624195450, ; 385: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 185
	i32 3641597786, ; 386: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 110
	i32 3643446276, ; 387: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 38
	i32 3643854240, ; 388: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 115
	i32 3647718629, ; 389: TwitterAnal.Application.dll => 0xd96bc4e5 => 127
	i32 3657292374, ; 390: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 63
	i32 3660523487, ; 391: System.Net.NetworkInformation => 0xda2f27df => 167
	i32 3672681054, ; 392: Mono.Android.dll => 0xdae8aa5e => 226
	i32 3682565725, ; 393: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 100
	i32 3700591436, ; 394: Microsoft.IdentityModel.Abstractions.dll => 0xdc928b4c => 74
	i32 3722202641, ; 395: Microsoft.Extensions.Configuration.Json.dll => 0xdddc4e11 => 64
	i32 3724971120, ; 396: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 114
	i32 3732100267, ; 397: System.Net.NameResolution => 0xde7354ab => 166
	i32 3748608112, ; 398: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 146
	i32 3751619990, ; 399: da\Microsoft.Maui.Controls.resources.dll => 0xdf9d2d96 => 13
	i32 3754567612, ; 400: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 90
	i32 3786282454, ; 401: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 102
	i32 3792276235, ; 402: System.Collections.NonGeneric => 0xe2098b0b => 136
	i32 3800979733, ; 403: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 80
	i32 3802395368, ; 404: System.Collections.Specialized.dll => 0xe2a3f2e8 => 137
	i32 3817368567, ; 405: CommunityToolkit.Maui.dll => 0xe3886bf7 => 47
	i32 3823082795, ; 406: System.Security.Cryptography.dll => 0xe3df9d2b => 202
	i32 3829621856, ; 407: System.Numerics.dll => 0xe4436460 => 176
	i32 3841636137, ; 408: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 66
	i32 3844307129, ; 409: System.Net.Mail.dll => 0xe52378b9 => 165
	i32 3848348906, ; 410: es\Microsoft.Data.SqlClient.resources => 0xe56124ea => 1
	i32 3849253459, ; 411: System.Runtime.InteropServices.dll => 0xe56ef253 => 186
	i32 3875112723, ; 412: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 199
	i32 3885497537, ; 413: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 174
	i32 3896106733, ; 414: System.Collections.Concurrent.dll => 0xe839deed => 134
	i32 3896760992, ; 415: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 104
	i32 3920221145, ; 416: nl\Microsoft.Maui.Controls.resources.dll => 0xe9a9d3d9 => 29
	i32 3928044579, ; 417: System.Xml.ReaderWriter => 0xea213423 => 217
	i32 3931092270, ; 418: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 117
	i32 3948965564, ; 419: it\Microsoft.Data.SqlClient.resources.dll => 0xeb606ebc => 3
	i32 3953953790, ; 420: System.Text.Encoding.CodePages => 0xebac8bfe => 204
	i32 3955647286, ; 421: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 98
	i32 4003436829, ; 422: System.Diagnostics.Process.dll => 0xee9f991d => 147
	i32 4025784931, ; 423: System.Memory => 0xeff49a63 => 163
	i32 4046471985, ; 424: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 82
	i32 4054681211, ; 425: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 182
	i32 4068434129, ; 426: System.Private.Xml.Linq.dll => 0xf27f60d1 => 180
	i32 4073602200, ; 427: System.Threading.dll => 0xf2ce3c98 => 213
	i32 4091086043, ; 428: el\Microsoft.Maui.Controls.resources.dll => 0xf3d904db => 15
	i32 4094352644, ; 429: Microsoft.Maui.Essentials.dll => 0xf40add04 => 84
	i32 4099507663, ; 430: System.Drawing.dll => 0xf45985cf => 153
	i32 4100113165, ; 431: System.Private.Uri => 0xf462c30d => 179
	i32 4101842092, ; 432: Microsoft.Extensions.Caching.Memory => 0xf47d24ac => 61
	i32 4103439459, ; 433: uk\Microsoft.Maui.Controls.resources.dll => 0xf4958463 => 39
	i32 4126470640, ; 434: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 65
	i32 4127667938, ; 435: System.IO.FileSystem.Watcher => 0xf60736e2 => 158
	i32 4147896353, ; 436: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 182
	i32 4150914736, ; 437: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 39
	i32 4151237749, ; 438: System.Core => 0xf76edc75 => 144
	i32 4159265925, ; 439: System.Xml.XmlSerializer => 0xf7e95c85 => 219
	i32 4164802419, ; 440: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 158
	i32 4181436372, ; 441: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 191
	i32 4182413190, ; 442: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 112
	i32 4194278001, ; 443: Microsoft.EntityFrameworkCore.SqlServer.dll => 0xf9ff9a71 => 59
	i32 4196529839, ; 444: System.Net.WebClient.dll => 0xfa21f6af => 173
	i32 4213026141, ; 445: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 146
	i32 4249188766, ; 446: nb\Microsoft.Maui.Controls.resources.dll => 0xfd45799e => 28
	i32 4260525087, ; 447: System.Buffers => 0xfdf2741f => 133
	i32 4263231520, ; 448: System.IdentityModel.Tokens.Jwt.dll => 0xfe1bc020 => 93
	i32 4271975918, ; 449: Microsoft.Maui.Controls.dll => 0xfea12dee => 81
	i32 4274623895, ; 450: CommunityToolkit.Mvvm.dll => 0xfec99597 => 49
	i32 4274976490, ; 451: System.Runtime.Numerics => 0xfecef6ea => 188
	i32 4292120959, ; 452: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 112
	i32 4292200793 ; 453: MediatR.dll => 0xffd5c959 => 50
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [454 x i32] [
	i32 167, ; 0
	i32 166, ; 1
	i32 67, ; 2
	i32 10, ; 3
	i32 19, ; 4
	i32 211, ; 5
	i32 3, ; 6
	i32 4, ; 7
	i32 148, ; 8
	i32 43, ; 9
	i32 200, ; 10
	i32 85, ; 11
	i32 27, ; 12
	i32 186, ; 13
	i32 209, ; 14
	i32 42, ; 15
	i32 35, ; 16
	i32 174, ; 17
	i32 200, ; 18
	i32 139, ; 19
	i32 102, ; 20
	i32 120, ; 21
	i32 142, ; 22
	i32 100, ; 23
	i32 131, ; 24
	i32 183, ; 25
	i32 8, ; 26
	i32 5, ; 27
	i32 40, ; 28
	i32 97, ; 29
	i32 176, ; 30
	i32 18, ; 31
	i32 86, ; 32
	i32 109, ; 33
	i32 89, ; 34
	i32 159, ; 35
	i32 214, ; 36
	i32 171, ; 37
	i32 211, ; 38
	i32 163, ; 39
	i32 212, ; 40
	i32 44, ; 41
	i32 51, ; 42
	i32 38, ; 43
	i32 123, ; 44
	i32 138, ; 45
	i32 108, ; 46
	i32 201, ; 47
	i32 215, ; 48
	i32 191, ; 49
	i32 221, ; 50
	i32 220, ; 51
	i32 74, ; 52
	i32 16, ; 53
	i32 177, ; 54
	i32 71, ; 55
	i32 161, ; 56
	i32 2, ; 57
	i32 37, ; 58
	i32 68, ; 59
	i32 192, ; 60
	i32 4, ; 61
	i32 52, ; 62
	i32 197, ; 63
	i32 47, ; 64
	i32 196, ; 65
	i32 106, ; 66
	i32 29, ; 67
	i32 206, ; 68
	i32 134, ; 69
	i32 170, ; 70
	i32 216, ; 71
	i32 187, ; 72
	i32 87, ; 73
	i32 169, ; 74
	i32 159, ; 75
	i32 156, ; 76
	i32 35, ; 77
	i32 70, ; 78
	i32 145, ; 79
	i32 179, ; 80
	i32 155, ; 81
	i32 129, ; 82
	i32 20, ; 83
	i32 34, ; 84
	i32 140, ; 85
	i32 31, ; 86
	i32 8, ; 87
	i32 24, ; 88
	i32 109, ; 89
	i32 151, ; 90
	i32 218, ; 91
	i32 178, ; 92
	i32 33, ; 93
	i32 138, ; 94
	i32 119, ; 95
	i32 153, ; 96
	i32 66, ; 97
	i32 98, ; 98
	i32 152, ; 99
	i32 14, ; 100
	i32 160, ; 101
	i32 111, ; 102
	i32 73, ; 103
	i32 141, ; 104
	i32 125, ; 105
	i32 92, ; 106
	i32 220, ; 107
	i32 36, ; 108
	i32 127, ; 109
	i32 30, ; 110
	i32 26, ; 111
	i32 53, ; 112
	i32 56, ; 113
	i32 32, ; 114
	i32 116, ; 115
	i32 56, ; 116
	i32 61, ; 117
	i32 147, ; 118
	i32 49, ; 119
	i32 12, ; 120
	i32 88, ; 121
	i32 107, ; 122
	i32 21, ; 123
	i32 178, ; 124
	i32 162, ; 125
	i32 190, ; 126
	i32 41, ; 127
	i32 42, ; 128
	i32 119, ; 129
	i32 103, ; 130
	i32 189, ; 131
	i32 10, ; 132
	i32 154, ; 133
	i32 170, ; 134
	i32 93, ; 135
	i32 16, ; 136
	i32 135, ; 137
	i32 156, ; 138
	i32 99, ; 139
	i32 71, ; 140
	i32 135, ; 141
	i32 155, ; 142
	i32 132, ; 143
	i32 54, ; 144
	i32 75, ; 145
	i32 40, ; 146
	i32 149, ; 147
	i32 208, ; 148
	i32 95, ; 149
	i32 190, ; 150
	i32 46, ; 151
	i32 9, ; 152
	i32 173, ; 153
	i32 113, ; 154
	i32 122, ; 155
	i32 78, ; 156
	i32 64, ; 157
	i32 48, ; 158
	i32 105, ; 159
	i32 164, ; 160
	i32 208, ; 161
	i32 193, ; 162
	i32 124, ; 163
	i32 168, ; 164
	i32 202, ; 165
	i32 54, ; 166
	i32 55, ; 167
	i32 198, ; 168
	i32 89, ; 169
	i32 101, ; 170
	i32 11, ; 171
	i32 214, ; 172
	i32 132, ; 173
	i32 150, ; 174
	i32 120, ; 175
	i32 68, ; 176
	i32 144, ; 177
	i32 225, ; 178
	i32 27, ; 179
	i32 108, ; 180
	i32 19, ; 181
	i32 72, ; 182
	i32 52, ; 183
	i32 1, ; 184
	i32 113, ; 185
	i32 125, ; 186
	i32 124, ; 187
	i32 117, ; 188
	i32 205, ; 189
	i32 189, ; 190
	i32 7, ; 191
	i32 128, ; 192
	i32 69, ; 193
	i32 36, ; 194
	i32 160, ; 195
	i32 123, ; 196
	i32 184, ; 197
	i32 78, ; 198
	i32 18, ; 199
	i32 58, ; 200
	i32 12, ; 201
	i32 136, ; 202
	i32 180, ; 203
	i32 128, ; 204
	i32 23, ; 205
	i32 62, ; 206
	i32 79, ; 207
	i32 15, ; 208
	i32 133, ; 209
	i32 58, ; 210
	i32 111, ; 211
	i32 73, ; 212
	i32 181, ; 213
	i32 110, ; 214
	i32 14, ; 215
	i32 150, ; 216
	i32 193, ; 217
	i32 175, ; 218
	i32 90, ; 219
	i32 143, ; 220
	i32 6, ; 221
	i32 9, ; 222
	i32 137, ; 223
	i32 219, ; 224
	i32 83, ; 225
	i32 22, ; 226
	i32 70, ; 227
	i32 69, ; 228
	i32 177, ; 229
	i32 67, ; 230
	i32 126, ; 231
	i32 164, ; 232
	i32 24, ; 233
	i32 6, ; 234
	i32 55, ; 235
	i32 77, ; 236
	i32 194, ; 237
	i32 63, ; 238
	i32 118, ; 239
	i32 172, ; 240
	i32 165, ; 241
	i32 28, ; 242
	i32 223, ; 243
	i32 5, ; 244
	i32 185, ; 245
	i32 168, ; 246
	i32 22, ; 247
	i32 217, ; 248
	i32 76, ; 249
	i32 62, ; 250
	i32 198, ; 251
	i32 203, ; 252
	i32 23, ; 253
	i32 215, ; 254
	i32 20, ; 255
	i32 143, ; 256
	i32 172, ; 257
	i32 87, ; 258
	i32 222, ; 259
	i32 224, ; 260
	i32 81, ; 261
	i32 171, ; 262
	i32 26, ; 263
	i32 92, ; 264
	i32 183, ; 265
	i32 0, ; 266
	i32 21, ; 267
	i32 131, ; 268
	i32 206, ; 269
	i32 25, ; 270
	i32 205, ; 271
	i32 212, ; 272
	i32 30, ; 273
	i32 126, ; 274
	i32 50, ; 275
	i32 181, ; 276
	i32 105, ; 277
	i32 25, ; 278
	i32 149, ; 279
	i32 94, ; 280
	i32 57, ; 281
	i32 76, ; 282
	i32 45, ; 283
	i32 96, ; 284
	i32 187, ; 285
	i32 218, ; 286
	i32 152, ; 287
	i32 145, ; 288
	i32 46, ; 289
	i32 51, ; 290
	i32 192, ; 291
	i32 195, ; 292
	i32 197, ; 293
	i32 188, ; 294
	i32 97, ; 295
	i32 209, ; 296
	i32 99, ; 297
	i32 72, ; 298
	i32 11, ; 299
	i32 31, ; 300
	i32 86, ; 301
	i32 59, ; 302
	i32 82, ; 303
	i32 83, ; 304
	i32 204, ; 305
	i32 121, ; 306
	i32 37, ; 307
	i32 85, ; 308
	i32 103, ; 309
	i32 57, ; 310
	i32 121, ; 311
	i32 84, ; 312
	i32 96, ; 313
	i32 48, ; 314
	i32 221, ; 315
	i32 223, ; 316
	i32 122, ; 317
	i32 175, ; 318
	i32 148, ; 319
	i32 91, ; 320
	i32 142, ; 321
	i32 203, ; 322
	i32 196, ; 323
	i32 107, ; 324
	i32 91, ; 325
	i32 7, ; 326
	i32 94, ; 327
	i32 44, ; 328
	i32 17, ; 329
	i32 114, ; 330
	i32 225, ; 331
	i32 140, ; 332
	i32 60, ; 333
	i32 130, ; 334
	i32 79, ; 335
	i32 201, ; 336
	i32 195, ; 337
	i32 154, ; 338
	i32 157, ; 339
	i32 210, ; 340
	i32 194, ; 341
	i32 151, ; 342
	i32 184, ; 343
	i32 115, ; 344
	i32 60, ; 345
	i32 213, ; 346
	i32 101, ; 347
	i32 161, ; 348
	i32 210, ; 349
	i32 139, ; 350
	i32 199, ; 351
	i32 17, ; 352
	i32 75, ; 353
	i32 169, ; 354
	i32 106, ; 355
	i32 2, ; 356
	i32 116, ; 357
	i32 34, ; 358
	i32 207, ; 359
	i32 88, ; 360
	i32 104, ; 361
	i32 224, ; 362
	i32 77, ; 363
	i32 118, ; 364
	i32 130, ; 365
	i32 13, ; 366
	i32 65, ; 367
	i32 222, ; 368
	i32 80, ; 369
	i32 32, ; 370
	i32 141, ; 371
	i32 226, ; 372
	i32 33, ; 373
	i32 207, ; 374
	i32 129, ; 375
	i32 216, ; 376
	i32 53, ; 377
	i32 0, ; 378
	i32 45, ; 379
	i32 157, ; 380
	i32 95, ; 381
	i32 41, ; 382
	i32 43, ; 383
	i32 162, ; 384
	i32 185, ; 385
	i32 110, ; 386
	i32 38, ; 387
	i32 115, ; 388
	i32 127, ; 389
	i32 63, ; 390
	i32 167, ; 391
	i32 226, ; 392
	i32 100, ; 393
	i32 74, ; 394
	i32 64, ; 395
	i32 114, ; 396
	i32 166, ; 397
	i32 146, ; 398
	i32 13, ; 399
	i32 90, ; 400
	i32 102, ; 401
	i32 136, ; 402
	i32 80, ; 403
	i32 137, ; 404
	i32 47, ; 405
	i32 202, ; 406
	i32 176, ; 407
	i32 66, ; 408
	i32 165, ; 409
	i32 1, ; 410
	i32 186, ; 411
	i32 199, ; 412
	i32 174, ; 413
	i32 134, ; 414
	i32 104, ; 415
	i32 29, ; 416
	i32 217, ; 417
	i32 117, ; 418
	i32 3, ; 419
	i32 204, ; 420
	i32 98, ; 421
	i32 147, ; 422
	i32 163, ; 423
	i32 82, ; 424
	i32 182, ; 425
	i32 180, ; 426
	i32 213, ; 427
	i32 15, ; 428
	i32 84, ; 429
	i32 153, ; 430
	i32 179, ; 431
	i32 61, ; 432
	i32 39, ; 433
	i32 65, ; 434
	i32 158, ; 435
	i32 182, ; 436
	i32 39, ; 437
	i32 144, ; 438
	i32 219, ; 439
	i32 158, ; 440
	i32 191, ; 441
	i32 112, ; 442
	i32 59, ; 443
	i32 173, ; 444
	i32 146, ; 445
	i32 28, ; 446
	i32 133, ; 447
	i32 93, ; 448
	i32 81, ; 449
	i32 49, ; 450
	i32 188, ; 451
	i32 112, ; 452
	i32 50 ; 453
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.1xx @ af27162bee43b7fecdca59b4f67aa8c175cbc875"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"NumRegisterParameters", i32 0}
