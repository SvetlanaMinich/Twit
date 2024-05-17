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

@assembly_image_cache = dso_local local_unnamed_addr global [359 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [712 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 68
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 67
	i32 15721112, ; 2: System.Runtime.Intrinsics.dll => 0xefe298 => 108
	i32 26230656, ; 3: Microsoft.Extensions.DependencyModel => 0x1903f80 => 194
	i32 32687329, ; 4: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 266
	i32 34715100, ; 5: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 300
	i32 34839235, ; 6: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 48
	i32 38948123, ; 7: ar\Microsoft.Maui.Controls.resources.dll => 0x2524d1b => 318
	i32 39485524, ; 8: System.Net.WebSockets.dll => 0x25a8054 => 80
	i32 42244203, ; 9: he\Microsoft.Maui.Controls.resources.dll => 0x284986b => 327
	i32 42639949, ; 10: System.Threading.Thread => 0x28aa24d => 145
	i32 57725457, ; 11: it\Microsoft.Data.SqlClient.resources => 0x370d211 => 311
	i32 57727992, ; 12: ja\Microsoft.Data.SqlClient.resources => 0x370dbf8 => 312
	i32 66541672, ; 13: System.Diagnostics.StackTrace => 0x3f75868 => 30
	i32 67008169, ; 14: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 351
	i32 68219467, ; 15: System.Security.Cryptography.Primitives => 0x410f24b => 124
	i32 72070932, ; 16: Microsoft.Maui.Graphics.dll => 0x44bb714 => 213
	i32 82292897, ; 17: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 102
	i32 83839681, ; 18: ms\Microsoft.Maui.Controls.resources.dll => 0x4ff4ac1 => 335
	i32 101534019, ; 19: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 284
	i32 117431740, ; 20: System.Runtime.InteropServices => 0x6ffddbc => 107
	i32 120558881, ; 21: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 284
	i32 122350210, ; 22: System.Threading.Channels.dll => 0x74aea82 => 139
	i32 134690465, ; 23: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 304
	i32 136584136, ; 24: zh-Hans\Microsoft.Maui.Controls.resources.dll => 0x8241bc8 => 350
	i32 140062828, ; 25: sk\Microsoft.Maui.Controls.resources.dll => 0x859306c => 343
	i32 142721839, ; 26: System.Net.WebHeaderCollection => 0x881c32f => 77
	i32 149972175, ; 27: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 124
	i32 159306688, ; 28: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 29: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 240
	i32 176265551, ; 30: System.ServiceProcess => 0xa81994f => 132
	i32 182336117, ; 31: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 286
	i32 184328833, ; 32: System.ValueTuple.dll => 0xafca281 => 151
	i32 205061960, ; 33: System.ComponentModel => 0xc38ff48 => 18
	i32 209399409, ; 34: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 238
	i32 220171995, ; 35: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 230216969, ; 36: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 260
	i32 230752869, ; 37: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 38: System.Linq.Parallel => 0xdcb05c4 => 59
	i32 231814094, ; 39: System.Globalization => 0xdd133ce => 42
	i32 246610117, ; 40: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 91
	i32 261689757, ; 41: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 243
	i32 264223668, ; 42: zh-Hans\Microsoft.Data.SqlClient.resources => 0xfbfbbb4 => 316
	i32 272650997, ; 43: ko\Microsoft.Data.SqlClient.resources.dll => 0x104052f5 => 313
	i32 276479776, ; 44: System.Threading.Timer.dll => 0x107abf20 => 147
	i32 278686392, ; 45: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 262
	i32 280482487, ; 46: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 259
	i32 291076382, ; 47: System.IO.Pipes.AccessControl.dll => 0x1159791e => 54
	i32 298918909, ; 48: System.Net.Ping.dll => 0x11d123fd => 69
	i32 317674968, ; 49: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 348
	i32 318968648, ; 50: Xamarin.AndroidX.Activity.dll => 0x13031348 => 229
	i32 321597661, ; 51: System.Numerics => 0x132b30dd => 83
	i32 321963286, ; 52: fr\Microsoft.Maui.Controls.resources.dll => 0x1330c516 => 326
	i32 330147069, ; 53: Microsoft.SqlServer.Server => 0x13ada4fd => 214
	i32 342366114, ; 54: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 261
	i32 347068432, ; 55: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 217
	i32 360082299, ; 56: System.ServiceModel.Web => 0x15766b7b => 131
	i32 367780167, ; 57: System.IO.Pipes => 0x15ebe147 => 55
	i32 374914964, ; 58: System.Transactions.Local => 0x1658bf94 => 149
	i32 375677976, ; 59: System.Net.ServicePoint.dll => 0x16646418 => 74
	i32 379916513, ; 60: System.Threading.Thread.dll => 0x16a510e1 => 145
	i32 385762202, ; 61: System.Memory.dll => 0x16fe439a => 62
	i32 392610295, ; 62: System.Threading.ThreadPool.dll => 0x1766c1f7 => 146
	i32 395744057, ; 63: _Microsoft.Android.Resource.Designer => 0x17969339 => 355
	i32 403441872, ; 64: WindowsBase => 0x180c08d0 => 165
	i32 403493213, ; 65: MediatR.Contracts => 0x180cd15d => 180
	i32 409257351, ; 66: tr\Microsoft.Maui.Controls.resources.dll => 0x1864c587 => 346
	i32 441335492, ; 67: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 244
	i32 442565967, ; 68: System.Collections => 0x1a61054f => 12
	i32 450948140, ; 69: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 257
	i32 451504562, ; 70: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 125
	i32 456227837, ; 71: System.Web.HttpUtility.dll => 0x1b317bfd => 152
	i32 459347974, ; 72: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 113
	i32 465846621, ; 73: mscorlib => 0x1bc4415d => 166
	i32 469710990, ; 74: System.dll => 0x1bff388e => 164
	i32 476646585, ; 75: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 259
	i32 485463106, ; 76: Microsoft.IdentityModel.Abstractions => 0x1cef9442 => 202
	i32 486930444, ; 77: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 272
	i32 489220957, ; 78: es\Microsoft.Maui.Controls.resources.dll => 0x1d28eb5d => 324
	i32 498788369, ; 79: System.ObjectModel => 0x1dbae811 => 84
	i32 513247710, ; 80: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 199
	i32 526420162, ; 81: System.Transactions.dll => 0x1f6088c2 => 150
	i32 527452488, ; 82: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 304
	i32 530272170, ; 83: System.Linq.Queryable => 0x1f9b4faa => 60
	i32 535369068, ; 84: fr\Microsoft.Data.SqlClient.resources.dll => 0x1fe9156c => 310
	i32 538707440, ; 85: th\Microsoft.Maui.Controls.resources.dll => 0x201c05f0 => 345
	i32 539058512, ; 86: Microsoft.Extensions.Logging => 0x20216150 => 195
	i32 540030774, ; 87: System.IO.FileSystem.dll => 0x20303736 => 51
	i32 545304856, ; 88: System.Runtime.Extensions => 0x2080b118 => 103
	i32 546455878, ; 89: System.Runtime.Serialization.Xml => 0x20924146 => 114
	i32 547209430, ; 90: ja\Microsoft.Data.SqlClient.resources.dll => 0x209dc0d6 => 312
	i32 548916678, ; 91: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 181
	i32 549171840, ; 92: System.Globalization.Calendars => 0x20bbb280 => 40
	i32 557405415, ; 93: Jsr305Binding => 0x213954e7 => 297
	i32 569601784, ; 94: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 295
	i32 577335427, ; 95: System.Security.Cryptography.Cng => 0x22697083 => 120
	i32 597488923, ; 96: CommunityToolkit.Maui => 0x239cf51b => 175
	i32 601371474, ; 97: System.IO.IsolatedStorage.dll => 0x23d83352 => 52
	i32 605376203, ; 98: System.IO.Compression.FileSystem => 0x24154ecb => 44
	i32 613668793, ; 99: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 119
	i32 627609679, ; 100: Xamarin.AndroidX.CustomView => 0x2568904f => 249
	i32 627931235, ; 101: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 337
	i32 639843206, ; 102: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 255
	i32 643868501, ; 103: System.Net => 0x2660a755 => 81
	i32 662205335, ; 104: System.Text.Encodings.Web.dll => 0x27787397 => 136
	i32 663517072, ; 105: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 291
	i32 666292255, ; 106: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 236
	i32 672442732, ; 107: System.Collections.Concurrent => 0x2814a96c => 8
	i32 683518922, ; 108: System.Net.Security => 0x28bdabca => 73
	i32 690569205, ; 109: System.Xml.Linq.dll => 0x29293ff5 => 155
	i32 691348768, ; 110: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 306
	i32 693804605, ; 111: System.Windows => 0x295a9e3d => 154
	i32 699345723, ; 112: System.Reflection.Emit => 0x29af2b3b => 92
	i32 700284507, ; 113: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 301
	i32 700358131, ; 114: System.IO.Compression.ZipFile => 0x29be9df3 => 45
	i32 720511267, ; 115: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 305
	i32 722857257, ; 116: System.Runtime.Loader.dll => 0x2b15ed29 => 109
	i32 735137430, ; 117: System.Security.SecureString.dll => 0x2bd14e96 => 129
	i32 748832960, ; 118: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 215
	i32 752232764, ; 119: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 755313932, ; 120: Xamarin.Android.Glide.Annotations.dll => 0x2d052d0c => 226
	i32 759454413, ; 121: System.Net.Requests => 0x2d445acd => 72
	i32 762598435, ; 122: System.IO.Pipes.dll => 0x2d745423 => 55
	i32 775507847, ; 123: System.IO.Compression => 0x2e394f87 => 46
	i32 777317022, ; 124: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 343
	i32 789151979, ; 125: Microsoft.Extensions.Options => 0x2f0980eb => 198
	i32 790371945, ; 126: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 250
	i32 804715423, ; 127: System.Data.Common => 0x2ff6fb9f => 22
	i32 807930345, ; 128: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x302809e9 => 264
	i32 823281589, ; 129: System.Private.Uri.dll => 0x311247b5 => 86
	i32 830298997, ; 130: System.IO.Compression.Brotli => 0x317d5b75 => 43
	i32 832635846, ; 131: System.Xml.XPath.dll => 0x31a103c6 => 160
	i32 834051424, ; 132: System.Net.Quic => 0x31b69d60 => 71
	i32 837166451, ; 133: TwitterAnal.Persistense => 0x31e62573 => 354
	i32 843511501, ; 134: Xamarin.AndroidX.Print => 0x3246f6cd => 277
	i32 869139383, ; 135: hi\Microsoft.Maui.Controls.resources.dll => 0x33ce03b7 => 328
	i32 873119928, ; 136: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 137: System.Globalization.dll => 0x34505120 => 42
	i32 878954865, ; 138: System.Net.Http.Json => 0x3463c971 => 63
	i32 880668424, ; 139: ru\Microsoft.Maui.Controls.resources.dll => 0x347def08 => 342
	i32 904024072, ; 140: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 911108515, ; 141: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 53
	i32 918734561, ; 142: pt-BR\Microsoft.Maui.Controls.resources.dll => 0x36c2c6e1 => 339
	i32 928116545, ; 143: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 300
	i32 952186615, ; 144: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 105
	i32 956528696, ; 145: zh-Hans\Microsoft.Data.SqlClient.resources.dll => 0x39037838 => 316
	i32 956575887, ; 146: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 305
	i32 961460050, ; 147: it\Microsoft.Maui.Controls.resources.dll => 0x394eb752 => 332
	i32 966729478, ; 148: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 298
	i32 967690846, ; 149: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 261
	i32 975236339, ; 150: System.Diagnostics.Tracing => 0x3a20ecf3 => 34
	i32 975874589, ; 151: System.Xml.XDocument => 0x3a2aaa1d => 158
	i32 986514023, ; 152: System.Private.DataContractSerialization.dll => 0x3acd0267 => 85
	i32 987214855, ; 153: System.Diagnostics.Tools => 0x3ad7b407 => 32
	i32 990727110, ; 154: ro\Microsoft.Maui.Controls.resources.dll => 0x3b0d4bc6 => 341
	i32 992768348, ; 155: System.Collections.dll => 0x3b2c715c => 12
	i32 994442037, ; 156: System.IO.FileSystem => 0x3b45fb35 => 51
	i32 1001831731, ; 157: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 56
	i32 1012816738, ; 158: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 281
	i32 1019214401, ; 159: System.Drawing => 0x3cbffa41 => 36
	i32 1028951442, ; 160: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 193
	i32 1031528504, ; 161: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 299
	i32 1035644815, ; 162: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 234
	i32 1036536393, ; 163: System.Drawing.Primitives.dll => 0x3dc84a49 => 35
	i32 1043950537, ; 164: de\Microsoft.Maui.Controls.resources.dll => 0x3e396bc9 => 322
	i32 1044663988, ; 165: System.Linq.Expressions.dll => 0x3e444eb4 => 58
	i32 1052210849, ; 166: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 268
	i32 1062017875, ; 167: Microsoft.Identity.Client.Extensions.Msal => 0x3f4d1b53 => 201
	i32 1067306892, ; 168: GoogleGson => 0x3f9dcf8c => 178
	i32 1082857460, ; 169: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1084122840, ; 170: Xamarin.Kotlin.StdLib => 0x409e66d8 => 302
	i32 1089913930, ; 171: System.Diagnostics.EventLog.dll => 0x40f6c44a => 220
	i32 1098259244, ; 172: System => 0x41761b2c => 164
	i32 1108272742, ; 173: sv\Microsoft.Maui.Controls.resources.dll => 0x420ee666 => 344
	i32 1113123738, ; 174: TwitterAnal.Application => 0x4258eb9a => 352
	i32 1117529484, ; 175: pl\Microsoft.Maui.Controls.resources.dll => 0x429c258c => 338
	i32 1118262833, ; 176: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 334
	i32 1121599056, ; 177: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0x42da3e50 => 267
	i32 1127624469, ; 178: Microsoft.Extensions.Logging.Debug => 0x43362f15 => 197
	i32 1138436374, ; 179: Microsoft.Data.SqlClient.dll => 0x43db2916 => 182
	i32 1149092582, ; 180: Xamarin.AndroidX.Window => 0x447dc2e6 => 294
	i32 1157931901, ; 181: Microsoft.EntityFrameworkCore.Abstractions => 0x4504a37d => 185
	i32 1168523401, ; 182: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 340
	i32 1170634674, ; 183: System.Web.dll => 0x45c677b2 => 153
	i32 1175144683, ; 184: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 290
	i32 1178241025, ; 185: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 275
	i32 1202000627, ; 186: Microsoft.EntityFrameworkCore.Abstractions.dll => 0x47a512f3 => 185
	i32 1204270330, ; 187: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 236
	i32 1204575371, ; 188: Microsoft.Extensions.Caching.Memory.dll => 0x47cc5c8b => 189
	i32 1208641965, ; 189: System.Diagnostics.Process => 0x480a69ad => 29
	i32 1214827643, ; 190: CommunityToolkit.Mvvm => 0x4868cc7b => 177
	i32 1219128291, ; 191: System.IO.IsolatedStorage => 0x48aa6be3 => 52
	i32 1243150071, ; 192: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 295
	i32 1253011324, ; 193: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1260983243, ; 194: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 320
	i32 1264511973, ; 195: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 285
	i32 1267360935, ; 196: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 289
	i32 1273260888, ; 197: Xamarin.AndroidX.Collection.Ktx => 0x4be46b58 => 241
	i32 1275534314, ; 198: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 306
	i32 1278448581, ; 199: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 233
	i32 1292207520, ; 200: SQLitePCLRaw.core.dll => 0x4d0585a0 => 216
	i32 1293217323, ; 201: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 252
	i32 1308624726, ; 202: hr\Microsoft.Maui.Controls.resources.dll => 0x4e000756 => 329
	i32 1309188875, ; 203: System.Private.DataContractSerialization => 0x4e08a30b => 85
	i32 1322716291, ; 204: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 294
	i32 1324164729, ; 205: System.Linq => 0x4eed2679 => 61
	i32 1335329327, ; 206: System.Runtime.Serialization.Json.dll => 0x4f97822f => 112
	i32 1336711579, ; 207: zh-HK\Microsoft.Maui.Controls.resources.dll => 0x4fac999b => 349
	i32 1364015309, ; 208: System.IO => 0x514d38cd => 57
	i32 1373134921, ; 209: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 350
	i32 1376866003, ; 210: Xamarin.AndroidX.SavedState => 0x52114ed3 => 281
	i32 1379779777, ; 211: System.Resources.ResourceManager => 0x523dc4c1 => 99
	i32 1402170036, ; 212: System.Configuration.dll => 0x53936ab4 => 19
	i32 1406073936, ; 213: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 245
	i32 1408764838, ; 214: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 111
	i32 1411638395, ; 215: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 101
	i32 1422545099, ; 216: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 102
	i32 1430672901, ; 217: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 318
	i32 1434145427, ; 218: System.Runtime.Handles => 0x557b5293 => 104
	i32 1435222561, ; 219: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 298
	i32 1439761251, ; 220: System.Net.Quic.dll => 0x55d10363 => 71
	i32 1452070440, ; 221: System.Formats.Asn1.dll => 0x568cd628 => 38
	i32 1453312822, ; 222: System.Diagnostics.Tools.dll => 0x569fcb36 => 32
	i32 1457743152, ; 223: System.Runtime.Extensions.dll => 0x56e36530 => 103
	i32 1458022317, ; 224: System.Net.Security.dll => 0x56e7a7ad => 73
	i32 1460893475, ; 225: System.IdentityModel.Tokens.Jwt => 0x57137723 => 221
	i32 1461004990, ; 226: es\Microsoft.Maui.Controls.resources => 0x57152abe => 324
	i32 1461234159, ; 227: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 228: System.Security.Cryptography.OpenSsl => 0x57201017 => 123
	i32 1462112819, ; 229: System.IO.Compression.dll => 0x57261233 => 46
	i32 1469204771, ; 230: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 235
	i32 1470490898, ; 231: Microsoft.Extensions.Primitives => 0x57a5e912 => 199
	i32 1479771757, ; 232: System.Collections.Immutable => 0x5833866d => 9
	i32 1480492111, ; 233: System.IO.Compression.Brotli.dll => 0x583e844f => 43
	i32 1487239319, ; 234: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1490025113, ; 235: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x58cffa99 => 282
	i32 1490351284, ; 236: Microsoft.Data.Sqlite.dll => 0x58d4f4b4 => 183
	i32 1498168481, ; 237: Microsoft.IdentityModel.JsonWebTokens.dll => 0x594c3ca1 => 203
	i32 1526286932, ; 238: vi\Microsoft.Maui.Controls.resources.dll => 0x5af94a54 => 348
	i32 1536373174, ; 239: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 31
	i32 1543031311, ; 240: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 138
	i32 1543355203, ; 241: System.Reflection.Emit.dll => 0x5bfdbb43 => 92
	i32 1550322496, ; 242: System.Reflection.Extensions.dll => 0x5c680b40 => 93
	i32 1565310744, ; 243: System.Runtime.Caching => 0x5d4cbf18 => 223
	i32 1565862583, ; 244: System.IO.FileSystem.Primitives => 0x5d552ab7 => 49
	i32 1566207040, ; 245: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 141
	i32 1573704789, ; 246: System.Runtime.Serialization.Json => 0x5dccd455 => 112
	i32 1580037396, ; 247: System.Threading.Overlapped => 0x5e2d7514 => 140
	i32 1582305585, ; 248: Azure.Identity => 0x5e501131 => 174
	i32 1582372066, ; 249: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 251
	i32 1592978981, ; 250: System.Runtime.Serialization.dll => 0x5ef2ee25 => 115
	i32 1596263029, ; 251: zh-Hant\Microsoft.Data.SqlClient.resources => 0x5f250a75 => 317
	i32 1597949149, ; 252: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 299
	i32 1601112923, ; 253: System.Xml.Serialization => 0x5f6f0b5b => 157
	i32 1604827217, ; 254: System.Net.WebClient => 0x5fa7b851 => 76
	i32 1618516317, ; 255: System.Net.WebSockets.Client.dll => 0x6078995d => 79
	i32 1622152042, ; 256: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 271
	i32 1622358360, ; 257: System.Dynamic.Runtime => 0x60b33958 => 37
	i32 1624863272, ; 258: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 293
	i32 1628113371, ; 259: Microsoft.IdentityModel.Protocols.OpenIdConnect => 0x610b09db => 206
	i32 1634654947, ; 260: CommunityToolkit.Maui.Core.dll => 0x616edae3 => 176
	i32 1635184631, ; 261: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 255
	i32 1636350590, ; 262: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 248
	i32 1639515021, ; 263: System.Net.Http.dll => 0x61b9038d => 64
	i32 1639986890, ; 264: System.Text.RegularExpressions => 0x61c036ca => 138
	i32 1641389582, ; 265: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1657153582, ; 266: System.Runtime => 0x62c6282e => 116
	i32 1658241508, ; 267: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 287
	i32 1658251792, ; 268: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 296
	i32 1670060433, ; 269: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 243
	i32 1675553242, ; 270: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 48
	i32 1677501392, ; 271: System.Net.Primitives.dll => 0x63fca3d0 => 70
	i32 1678508291, ; 272: System.Net.WebSockets => 0x640c0103 => 80
	i32 1679769178, ; 273: System.Security.Cryptography => 0x641f3e5a => 126
	i32 1688112883, ; 274: Microsoft.Data.Sqlite => 0x649e8ef3 => 183
	i32 1689493916, ; 275: Microsoft.EntityFrameworkCore.dll => 0x64b3a19c => 184
	i32 1691477237, ; 276: System.Reflection.Metadata => 0x64d1e4f5 => 94
	i32 1696967625, ; 277: System.Security.Cryptography.Csp => 0x6525abc9 => 121
	i32 1698840827, ; 278: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 303
	i32 1701541528, ; 279: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1711441057, ; 280: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 217
	i32 1720223769, ; 281: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x66888819 => 264
	i32 1726116996, ; 282: System.Reflection.dll => 0x66e27484 => 97
	i32 1728033016, ; 283: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 28
	i32 1729485958, ; 284: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 239
	i32 1743415430, ; 285: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 319
	i32 1744735666, ; 286: System.Transactions.Local.dll => 0x67fe8db2 => 149
	i32 1746316138, ; 287: Mono.Android.Export => 0x6816ab6a => 169
	i32 1750313021, ; 288: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1758240030, ; 289: System.Resources.Reader.dll => 0x68cc9d1e => 98
	i32 1763938596, ; 290: System.Diagnostics.TraceSource.dll => 0x69239124 => 33
	i32 1765942094, ; 291: System.Reflection.Extensions => 0x6942234e => 93
	i32 1766324549, ; 292: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 286
	i32 1770582343, ; 293: Microsoft.Extensions.Logging.dll => 0x6988f147 => 195
	i32 1776026572, ; 294: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 295: System.Globalization.Extensions.dll => 0x69ec0683 => 41
	i32 1780572499, ; 296: Mono.Android.Runtime.dll => 0x6a216153 => 170
	i32 1782862114, ; 297: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 335
	i32 1788241197, ; 298: Xamarin.AndroidX.Fragment => 0x6a96652d => 257
	i32 1793755602, ; 299: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 327
	i32 1794500907, ; 300: Microsoft.Identity.Client.dll => 0x6af5e92b => 200
	i32 1796167890, ; 301: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 181
	i32 1798832757, ; 302: es\Microsoft.Data.SqlClient.resources.dll => 0x6b380275 => 309
	i32 1808609942, ; 303: Xamarin.AndroidX.Loader => 0x6bcd3296 => 271
	i32 1813058853, ; 304: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 302
	i32 1813201214, ; 305: Xamarin.Google.Android.Material => 0x6c13413e => 296
	i32 1818569960, ; 306: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 276
	i32 1818787751, ; 307: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1824175904, ; 308: System.Text.Encoding.Extensions => 0x6cbab720 => 134
	i32 1824722060, ; 309: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 111
	i32 1824744702, ; 310: ru\Microsoft.Data.SqlClient.resources.dll => 0x6cc364fe => 315
	i32 1827458547, ; 311: TwitterAnal.Domain => 0x6ceccdf3 => 353
	i32 1828688058, ; 312: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 196
	i32 1847515442, ; 313: Xamarin.Android.Glide.Annotations => 0x6e1ed932 => 226
	i32 1853025655, ; 314: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 344
	i32 1858542181, ; 315: System.Linq.Expressions => 0x6ec71a65 => 58
	i32 1870277092, ; 316: System.Reflection.Primitives => 0x6f7a29e4 => 95
	i32 1871986876, ; 317: Microsoft.IdentityModel.Protocols.OpenIdConnect.dll => 0x6f9440bc => 206
	i32 1875935024, ; 318: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 326
	i32 1879696579, ; 319: System.Formats.Tar.dll => 0x7009e4c3 => 39
	i32 1885316902, ; 320: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 237
	i32 1886040351, ; 321: Microsoft.EntityFrameworkCore.Sqlite.dll => 0x706ab11f => 187
	i32 1888955245, ; 322: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 323: System.Reflection.Metadata.dll => 0x70a66bdd => 94
	i32 1893218855, ; 324: cs\Microsoft.Maui.Controls.resources.dll => 0x70d83a27 => 320
	i32 1898237753, ; 325: System.Reflection.DispatchProxy => 0x7124cf39 => 89
	i32 1900610850, ; 326: System.Resources.ResourceManager.dll => 0x71490522 => 99
	i32 1910275211, ; 327: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1939592360, ; 328: System.Private.Xml.Linq => 0x739bd4a8 => 87
	i32 1939757378, ; 329: TwitterAnal.Domain.dll => 0x739e5942 => 353
	i32 1953182387, ; 330: id\Microsoft.Maui.Controls.resources.dll => 0x746b32b3 => 331
	i32 1956758971, ; 331: System.Resources.Writer => 0x74a1c5bb => 100
	i32 1961813231, ; 332: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 283
	i32 1968388702, ; 333: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 190
	i32 1983156543, ; 334: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 303
	i32 1985761444, ; 335: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 228
	i32 1986222447, ; 336: Microsoft.IdentityModel.Tokens.dll => 0x7663596f => 207
	i32 2003115576, ; 337: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 323
	i32 2011961780, ; 338: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2014489277, ; 339: Microsoft.EntityFrameworkCore.Sqlite => 0x7812aabd => 187
	i32 2019465201, ; 340: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 268
	i32 2031763787, ; 341: Xamarin.Android.Glide => 0x791a414b => 225
	i32 2040764568, ; 342: Microsoft.Identity.Client.Extensions.Msal.dll => 0x79a39898 => 201
	i32 2045470958, ; 343: System.Private.Xml => 0x79eb68ee => 88
	i32 2055257422, ; 344: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 263
	i32 2060060697, ; 345: System.Windows.dll => 0x7aca0819 => 154
	i32 2066184531, ; 346: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 322
	i32 2070888862, ; 347: System.Diagnostics.TraceSource => 0x7b6f419e => 33
	i32 2079903147, ; 348: System.Runtime.dll => 0x7bf8cdab => 116
	i32 2090596640, ; 349: System.Numerics.Vectors => 0x7c9bf920 => 82
	i32 2103459038, ; 350: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 218
	i32 2127167465, ; 351: System.Console => 0x7ec9ffe9 => 20
	i32 2131193692, ; 352: pt-BR\Microsoft.Data.SqlClient.resources.dll => 0x7f076f5c => 314
	i32 2134056115, ; 353: zh-Hant\Microsoft.Data.SqlClient.resources.dll => 0x7f331cb3 => 317
	i32 2142473426, ; 354: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143790110, ; 355: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 162
	i32 2146852085, ; 356: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2159891885, ; 357: Microsoft.Maui => 0x80bd55ad => 211
	i32 2169148018, ; 358: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 330
	i32 2181898931, ; 359: Microsoft.Extensions.Options.dll => 0x820d22b3 => 198
	i32 2192057212, ; 360: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 196
	i32 2193016926, ; 361: System.ObjectModel.dll => 0x82b6c85e => 84
	i32 2197979891, ; 362: Microsoft.Extensions.DependencyModel.dll => 0x830282f3 => 194
	i32 2201107256, ; 363: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 307
	i32 2201231467, ; 364: System.Net.Http => 0x8334206b => 64
	i32 2207618523, ; 365: it\Microsoft.Maui.Controls.resources => 0x839595db => 332
	i32 2217644978, ; 366: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 290
	i32 2222056684, ; 367: System.Threading.Tasks.Parallel => 0x8471e4ec => 143
	i32 2228745826, ; 368: pt-BR\Microsoft.Data.SqlClient.resources => 0x84d7f662 => 314
	i32 2244775296, ; 369: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 272
	i32 2252106437, ; 370: System.Xml.Serialization.dll => 0x863c6ac5 => 157
	i32 2252897993, ; 371: Microsoft.EntityFrameworkCore => 0x86487ec9 => 184
	i32 2253551641, ; 372: Microsoft.IdentityModel.Protocols => 0x86527819 => 205
	i32 2256313426, ; 373: System.Globalization.Extensions => 0x867c9c52 => 41
	i32 2265110946, ; 374: System.Security.AccessControl.dll => 0x8702d9a2 => 117
	i32 2266799131, ; 375: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 191
	i32 2267999099, ; 376: Xamarin.Android.Glide.DiskLruCache.dll => 0x872eeb7b => 227
	i32 2279755925, ; 377: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 279
	i32 2293034957, ; 378: System.ServiceModel.Web.dll => 0x88acefcd => 131
	i32 2295906218, ; 379: System.Net.Sockets => 0x88d8bfaa => 75
	i32 2298471582, ; 380: System.Net.Mail => 0x88ffe49e => 66
	i32 2303942373, ; 381: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 336
	i32 2305521784, ; 382: System.Private.CoreLib.dll => 0x896b7878 => 172
	i32 2309278602, ; 383: ko\Microsoft.Data.SqlClient.resources => 0x89a4cb8a => 313
	i32 2315684594, ; 384: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 231
	i32 2320631194, ; 385: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 143
	i32 2340441535, ; 386: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 106
	i32 2344264397, ; 387: System.ValueTuple => 0x8bbaa2cd => 151
	i32 2353062107, ; 388: System.Net.Primitives => 0x8c40e0db => 70
	i32 2366048013, ; 389: hu\Microsoft.Maui.Controls.resources.dll => 0x8d07070d => 330
	i32 2368005991, ; 390: System.Xml.ReaderWriter.dll => 0x8d24e767 => 156
	i32 2369706906, ; 391: Microsoft.IdentityModel.Logging => 0x8d3edb9a => 204
	i32 2371007202, ; 392: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 190
	i32 2378619854, ; 393: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 121
	i32 2383496789, ; 394: System.Security.Principal.Windows.dll => 0x8e114655 => 127
	i32 2395872292, ; 395: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 331
	i32 2401565422, ; 396: System.Web.HttpUtility => 0x8f24faee => 152
	i32 2403452196, ; 397: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 254
	i32 2421380589, ; 398: System.Threading.Tasks.Dataflow => 0x905355ed => 141
	i32 2423080555, ; 399: Xamarin.AndroidX.Collection.Ktx.dll => 0x906d466b => 241
	i32 2427813419, ; 400: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 328
	i32 2435356389, ; 401: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 402: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2454642406, ; 403: System.Text.Encoding.dll => 0x924edee6 => 135
	i32 2458678730, ; 404: System.Net.Sockets.dll => 0x928c75ca => 75
	i32 2459001652, ; 405: System.Linq.Parallel.dll => 0x92916334 => 59
	i32 2465273461, ; 406: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 215
	i32 2465532216, ; 407: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 244
	i32 2471841756, ; 408: netstandard.dll => 0x93554fdc => 167
	i32 2475788418, ; 409: Java.Interop.dll => 0x93918882 => 168
	i32 2480646305, ; 410: Microsoft.Maui.Controls => 0x93dba8a1 => 209
	i32 2483903535, ; 411: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 412: System.Net.ServicePoint => 0x94147f61 => 74
	i32 2490993605, ; 413: System.AppContext.dll => 0x94798bc5 => 6
	i32 2501346920, ; 414: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2503351294, ; 415: ko\Microsoft.Maui.Controls.resources.dll => 0x95361bfe => 334
	i32 2505896520, ; 416: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 266
	i32 2509217888, ; 417: System.Diagnostics.EventLog => 0x958fa060 => 220
	i32 2522472828, ; 418: Xamarin.Android.Glide.dll => 0x9659e17c => 225
	i32 2538310050, ; 419: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 91
	i32 2540434582, ; 420: de\Microsoft.Data.SqlClient.resources.dll => 0x976bf496 => 308
	i32 2550873716, ; 421: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 329
	i32 2562349572, ; 422: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 423: System.Text.Encodings.Web => 0x9930ee42 => 136
	i32 2576534780, ; 424: ja\Microsoft.Maui.Controls.resources.dll => 0x9992ccfc => 333
	i32 2581783588, ; 425: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x99e2e424 => 267
	i32 2581819634, ; 426: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 289
	i32 2585220780, ; 427: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 134
	i32 2585805581, ; 428: System.Net.Ping => 0x9a20430d => 69
	i32 2589602615, ; 429: System.Threading.ThreadPool => 0x9a5a3337 => 146
	i32 2593496499, ; 430: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 338
	i32 2605712449, ; 431: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 307
	i32 2615233544, ; 432: Xamarin.AndroidX.Fragment.Ktx => 0x9be14c08 => 258
	i32 2615519321, ; 433: MediatR => 0x9be5a859 => 179
	i32 2616218305, ; 434: Microsoft.Extensions.Logging.Debug.dll => 0x9bf052c1 => 197
	i32 2617129537, ; 435: System.Private.Xml.dll => 0x9bfe3a41 => 88
	i32 2618712057, ; 436: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 96
	i32 2620871830, ; 437: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 248
	i32 2624644809, ; 438: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 253
	i32 2626831493, ; 439: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 333
	i32 2627185994, ; 440: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 31
	i32 2628210652, ; 441: System.Memory.Data => 0x9ca74fdc => 222
	i32 2629843544, ; 442: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 45
	i32 2633051222, ; 443: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 262
	i32 2634653062, ; 444: Microsoft.EntityFrameworkCore.Relational.dll => 0x9d099d86 => 186
	i32 2640290731, ; 445: Microsoft.IdentityModel.Logging.dll => 0x9d5fa3ab => 204
	i32 2640706905, ; 446: Azure.Core => 0x9d65fd59 => 173
	i32 2660759594, ; 447: System.Security.Cryptography.ProtectedData.dll => 0x9e97f82a => 224
	i32 2663391936, ; 448: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 227
	i32 2663698177, ; 449: System.Runtime.Loader => 0x9ec4cf01 => 109
	i32 2664396074, ; 450: System.Xml.XDocument.dll => 0x9ecf752a => 158
	i32 2665622720, ; 451: System.Drawing.Primitives => 0x9ee22cc0 => 35
	i32 2676780864, ; 452: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2677098746, ; 453: Azure.Identity.dll => 0x9f9148fa => 174
	i32 2677943566, ; 454: MediatR.Contracts.dll => 0x9f9e2d0e => 180
	i32 2686887180, ; 455: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 114
	i32 2693849962, ; 456: System.IO.dll => 0xa090e36a => 57
	i32 2701096212, ; 457: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 287
	i32 2715334215, ; 458: System.Threading.Tasks.dll => 0xa1d8b647 => 144
	i32 2717744543, ; 459: System.Security.Claims => 0xa1fd7d9f => 118
	i32 2719963679, ; 460: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 120
	i32 2724373263, ; 461: System.Runtime.Numerics.dll => 0xa262a30f => 110
	i32 2732626843, ; 462: Xamarin.AndroidX.Activity => 0xa2e0939b => 229
	i32 2735172069, ; 463: System.Threading.Channels => 0xa30769e5 => 139
	i32 2737747696, ; 464: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 235
	i32 2740051746, ; 465: Microsoft.Identity.Client => 0xa351df22 => 200
	i32 2740698338, ; 466: ca\Microsoft.Maui.Controls.resources.dll => 0xa35bbce2 => 319
	i32 2740948882, ; 467: System.IO.Pipes.AccessControl => 0xa35f8f92 => 54
	i32 2748088231, ; 468: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 105
	i32 2752995522, ; 469: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 339
	i32 2755098380, ; 470: Microsoft.SqlServer.Server.dll => 0xa437770c => 214
	i32 2758225723, ; 471: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 210
	i32 2764765095, ; 472: Microsoft.Maui.dll => 0xa4caf7a7 => 211
	i32 2765824710, ; 473: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 133
	i32 2770495804, ; 474: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 301
	i32 2778768386, ; 475: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 292
	i32 2779977773, ; 476: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 280
	i32 2785988530, ; 477: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 345
	i32 2788224221, ; 478: Xamarin.AndroidX.Fragment.Ktx.dll => 0xa630ecdd => 258
	i32 2801831435, ; 479: Microsoft.Maui.Graphics => 0xa7008e0b => 213
	i32 2803228030, ; 480: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 159
	i32 2810250172, ; 481: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 245
	i32 2819470561, ; 482: System.Xml.dll => 0xa80db4e1 => 163
	i32 2821205001, ; 483: System.ServiceProcess.dll => 0xa8282c09 => 132
	i32 2821294376, ; 484: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 280
	i32 2824502124, ; 485: System.Xml.XmlDocument => 0xa85a7b6c => 161
	i32 2838993487, ; 486: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xa9379a4f => 269
	i32 2847789619, ; 487: Microsoft.EntityFrameworkCore.Relational => 0xa9bdd233 => 186
	i32 2849599387, ; 488: System.Threading.Overlapped.dll => 0xa9d96f9b => 140
	i32 2853208004, ; 489: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 292
	i32 2855708567, ; 490: Xamarin.AndroidX.Transition => 0xaa36a797 => 288
	i32 2861098320, ; 491: Mono.Android.Export.dll => 0xaa88e550 => 169
	i32 2861189240, ; 492: Microsoft.Maui.Essentials => 0xaa8a4878 => 212
	i32 2867946736, ; 493: System.Security.Cryptography.ProtectedData => 0xaaf164f0 => 224
	i32 2868488919, ; 494: CommunityToolkit.Maui.Core => 0xaaf9aad7 => 176
	i32 2870099610, ; 495: Xamarin.AndroidX.Activity.Ktx.dll => 0xab123e9a => 230
	i32 2875164099, ; 496: Jsr305Binding.dll => 0xab5f85c3 => 297
	i32 2875220617, ; 497: System.Globalization.Calendars.dll => 0xab606289 => 40
	i32 2884993177, ; 498: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 256
	i32 2887636118, ; 499: System.Net.dll => 0xac1dd496 => 81
	i32 2899753641, ; 500: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 56
	i32 2900621748, ; 501: System.Dynamic.Runtime.dll => 0xace3f9b4 => 37
	i32 2901442782, ; 502: System.Reflection => 0xacf080de => 97
	i32 2905242038, ; 503: mscorlib.dll => 0xad2a79b6 => 166
	i32 2909740682, ; 504: System.Private.CoreLib => 0xad6f1e8a => 172
	i32 2916838712, ; 505: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 293
	i32 2919462931, ; 506: System.Numerics.Vectors.dll => 0xae037813 => 82
	i32 2921128767, ; 507: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 232
	i32 2936416060, ; 508: System.Resources.Reader => 0xaf06273c => 98
	i32 2940926066, ; 509: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 30
	i32 2942453041, ; 510: System.Xml.XPath.XDocument => 0xaf624531 => 159
	i32 2944313911, ; 511: System.Configuration.ConfigurationManager.dll => 0xaf7eaa37 => 219
	i32 2959614098, ; 512: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2968338931, ; 513: System.Security.Principal.Windows => 0xb0ed41f3 => 127
	i32 2972252294, ; 514: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 119
	i32 2978675010, ; 515: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 252
	i32 2987532451, ; 516: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 283
	i32 2996846495, ; 517: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 265
	i32 3012788804, ; 518: System.Configuration.ConfigurationManager => 0xb3938244 => 219
	i32 3016983068, ; 519: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 285
	i32 3023353419, ; 520: WindowsBase.dll => 0xb434b64b => 165
	i32 3023511517, ; 521: ru\Microsoft.Data.SqlClient.resources => 0xb4371fdd => 315
	i32 3024354802, ; 522: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 260
	i32 3033605958, ; 523: System.Memory.Data.dll => 0xb4d12746 => 222
	i32 3038032645, ; 524: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 355
	i32 3053864966, ; 525: fi\Microsoft.Maui.Controls.resources.dll => 0xb6064806 => 325
	i32 3056245963, ; 526: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0xb62a9ccb => 282
	i32 3057625584, ; 527: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 273
	i32 3059408633, ; 528: Mono.Android.Runtime => 0xb65adef9 => 170
	i32 3059793426, ; 529: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3069363400, ; 530: Microsoft.Extensions.Caching.Abstractions.dll => 0xb6f2c4c8 => 188
	i32 3070224510, ; 531: TwitterAnal.UI => 0xb6ffe87e => 0
	i32 3075834255, ; 532: System.Threading.Tasks => 0xb755818f => 144
	i32 3084678329, ; 533: Microsoft.IdentityModel.Tokens => 0xb7dc74b9 => 207
	i32 3090735792, ; 534: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 125
	i32 3099732863, ; 535: System.Security.Claims.dll => 0xb8c22b7f => 118
	i32 3103600923, ; 536: System.Formats.Asn1 => 0xb8fd311b => 38
	i32 3111772706, ; 537: System.Runtime.Serialization => 0xb979e222 => 115
	i32 3121463068, ; 538: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 47
	i32 3124832203, ; 539: System.Threading.Tasks.Extensions => 0xba4127cb => 142
	i32 3132293585, ; 540: System.Security.AccessControl => 0xbab301d1 => 117
	i32 3147165239, ; 541: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 34
	i32 3148237826, ; 542: GoogleGson.dll => 0xbba64c02 => 178
	i32 3159123045, ; 543: System.Reflection.Primitives.dll => 0xbc4c6465 => 95
	i32 3160747431, ; 544: System.IO.MemoryMappedFiles => 0xbc652da7 => 53
	i32 3178803400, ; 545: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 274
	i32 3192346100, ; 546: System.Security.SecureString => 0xbe4755f4 => 129
	i32 3193515020, ; 547: System.Web => 0xbe592c0c => 153
	i32 3195844289, ; 548: Microsoft.Extensions.Caching.Abstractions => 0xbe7cb6c1 => 188
	i32 3204380047, ; 549: System.Data.dll => 0xbefef58f => 24
	i32 3209718065, ; 550: System.Xml.XmlDocument.dll => 0xbf506931 => 161
	i32 3211777861, ; 551: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 251
	i32 3220365878, ; 552: System.Threading => 0xbff2e236 => 148
	i32 3226221578, ; 553: System.Runtime.Handles.dll => 0xc04c3c0a => 104
	i32 3251039220, ; 554: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 89
	i32 3258312781, ; 555: Xamarin.AndroidX.CardView => 0xc235e84d => 239
	i32 3265493905, ; 556: System.Linq.Queryable.dll => 0xc2a37b91 => 60
	i32 3265893370, ; 557: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 142
	i32 3277815716, ; 558: System.Resources.Writer.dll => 0xc35f7fa4 => 100
	i32 3279906254, ; 559: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 560: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3290767353, ; 561: System.Security.Cryptography.Encoding => 0xc4251ff9 => 122
	i32 3299363146, ; 562: System.Text.Encoding => 0xc4a8494a => 135
	i32 3303498502, ; 563: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 28
	i32 3305363605, ; 564: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 325
	i32 3312457198, ; 565: Microsoft.IdentityModel.JsonWebTokens => 0xc57015ee => 203
	i32 3316684772, ; 566: System.Net.Requests.dll => 0xc5b097e4 => 72
	i32 3317135071, ; 567: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 249
	i32 3317144872, ; 568: System.Data => 0xc5b79d28 => 24
	i32 3340431453, ; 569: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 237
	i32 3343947874, ; 570: fr\Microsoft.Data.SqlClient.resources => 0xc7509862 => 310
	i32 3345895724, ; 571: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 278
	i32 3346324047, ; 572: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 275
	i32 3357674450, ; 573: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 342
	i32 3358260929, ; 574: System.Text.Json => 0xc82afec1 => 137
	i32 3360279109, ; 575: SQLitePCLRaw.core => 0xc849ca45 => 216
	i32 3362336904, ; 576: Xamarin.AndroidX.Activity.Ktx => 0xc8693088 => 230
	i32 3362522851, ; 577: Xamarin.AndroidX.Core => 0xc86c06e3 => 246
	i32 3366347497, ; 578: Java.Interop => 0xc8a662e9 => 168
	i32 3374879918, ; 579: Microsoft.IdentityModel.Protocols.dll => 0xc92894ae => 205
	i32 3374999561, ; 580: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 279
	i32 3376360557, ; 581: TwitterAnal.UI.dll => 0xc93f2c6d => 0
	i32 3381016424, ; 582: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 321
	i32 3395150330, ; 583: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 101
	i32 3403906625, ; 584: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 123
	i32 3405233483, ; 585: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 250
	i32 3428513518, ; 586: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 192
	i32 3429136800, ; 587: System.Xml => 0xcc6479a0 => 163
	i32 3430777524, ; 588: netstandard => 0xcc7d82b4 => 167
	i32 3441283291, ; 589: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 253
	i32 3445260447, ; 590: System.Formats.Tar => 0xcd5a809f => 39
	i32 3452344032, ; 591: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 208
	i32 3458724246, ; 592: pt\Microsoft.Maui.Controls.resources.dll => 0xce27f196 => 340
	i32 3471940407, ; 593: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3476120550, ; 594: Mono.Android => 0xcf3163e6 => 171
	i32 3484440000, ; 595: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 341
	i32 3485117614, ; 596: System.Text.Json.dll => 0xcfbaacae => 137
	i32 3486566296, ; 597: System.Transactions => 0xcfd0c798 => 150
	i32 3493954962, ; 598: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 242
	i32 3501707486, ; 599: TwitterAnal.Persistense.dll => 0xd0b7d0de => 354
	i32 3509114376, ; 600: System.Xml.Linq => 0xd128d608 => 155
	i32 3515174580, ; 601: System.Security.dll => 0xd1854eb4 => 130
	i32 3530912306, ; 602: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 603: System.Net.HttpListener => 0xd2ff69f1 => 65
	i32 3545306353, ; 604: Microsoft.Data.SqlClient => 0xd35114f1 => 182
	i32 3555084973, ; 605: de\Microsoft.Data.SqlClient.resources => 0xd3e64aad => 308
	i32 3560100363, ; 606: System.Threading.Timer => 0xd432d20b => 147
	i32 3561949811, ; 607: Azure.Core.dll => 0xd44f0a73 => 173
	i32 3570554715, ; 608: System.IO.FileSystem.AccessControl => 0xd4d2575b => 47
	i32 3570608287, ; 609: System.Runtime.Caching.dll => 0xd4d3289f => 223
	i32 3580758918, ; 610: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 349
	i32 3592228221, ; 611: zh-Hant\Microsoft.Maui.Controls.resources.dll => 0xd61d0d7d => 351
	i32 3597029428, ; 612: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 228
	i32 3598340787, ; 613: System.Net.WebSockets.Client => 0xd67a52b3 => 79
	i32 3608519521, ; 614: System.Linq.dll => 0xd715a361 => 61
	i32 3624195450, ; 615: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 106
	i32 3627220390, ; 616: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 277
	i32 3633644679, ; 617: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 232
	i32 3638274909, ; 618: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 49
	i32 3641597786, ; 619: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 263
	i32 3643446276, ; 620: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 346
	i32 3643854240, ; 621: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 274
	i32 3645089577, ; 622: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3647718629, ; 623: TwitterAnal.Application.dll => 0xd96bc4e5 => 352
	i32 3657292374, ; 624: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 191
	i32 3660523487, ; 625: System.Net.NetworkInformation => 0xda2f27df => 68
	i32 3672681054, ; 626: Mono.Android.dll => 0xdae8aa5e => 171
	i32 3682565725, ; 627: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 238
	i32 3684561358, ; 628: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 242
	i32 3700591436, ; 629: Microsoft.IdentityModel.Abstractions.dll => 0xdc928b4c => 202
	i32 3700866549, ; 630: System.Net.WebProxy.dll => 0xdc96bdf5 => 78
	i32 3706696989, ; 631: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 247
	i32 3716563718, ; 632: System.Runtime.Intrinsics => 0xdd864306 => 108
	i32 3718780102, ; 633: Xamarin.AndroidX.Annotation => 0xdda814c6 => 231
	i32 3724971120, ; 634: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 273
	i32 3732100267, ; 635: System.Net.NameResolution => 0xde7354ab => 67
	i32 3737834244, ; 636: System.Net.Http.Json.dll => 0xdecad304 => 63
	i32 3748608112, ; 637: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 27
	i32 3751444290, ; 638: System.Xml.XPath => 0xdf9a7f42 => 160
	i32 3751619990, ; 639: da\Microsoft.Maui.Controls.resources.dll => 0xdf9d2d96 => 321
	i32 3754567612, ; 640: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 218
	i32 3786282454, ; 641: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 240
	i32 3792276235, ; 642: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3800979733, ; 643: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 208
	i32 3802395368, ; 644: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3817368567, ; 645: CommunityToolkit.Maui.dll => 0xe3886bf7 => 175
	i32 3819260425, ; 646: System.Net.WebProxy => 0xe3a54a09 => 78
	i32 3823082795, ; 647: System.Security.Cryptography.dll => 0xe3df9d2b => 126
	i32 3829621856, ; 648: System.Numerics.dll => 0xe4436460 => 83
	i32 3841636137, ; 649: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 193
	i32 3844307129, ; 650: System.Net.Mail.dll => 0xe52378b9 => 66
	i32 3848348906, ; 651: es\Microsoft.Data.SqlClient.resources => 0xe56124ea => 309
	i32 3849253459, ; 652: System.Runtime.InteropServices.dll => 0xe56ef253 => 107
	i32 3870376305, ; 653: System.Net.HttpListener.dll => 0xe6b14171 => 65
	i32 3873536506, ; 654: System.Security.Principal => 0xe6e179fa => 128
	i32 3875112723, ; 655: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 122
	i32 3885497537, ; 656: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 77
	i32 3885922214, ; 657: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 288
	i32 3888767677, ; 658: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 278
	i32 3896106733, ; 659: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 660: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 246
	i32 3901907137, ; 661: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3920221145, ; 662: nl\Microsoft.Maui.Controls.resources.dll => 0xe9a9d3d9 => 337
	i32 3920810846, ; 663: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 44
	i32 3921031405, ; 664: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 291
	i32 3928044579, ; 665: System.Xml.ReaderWriter => 0xea213423 => 156
	i32 3930554604, ; 666: System.Security.Principal.dll => 0xea4780ec => 128
	i32 3931092270, ; 667: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 276
	i32 3945713374, ; 668: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3948965564, ; 669: it\Microsoft.Data.SqlClient.resources.dll => 0xeb606ebc => 311
	i32 3953953790, ; 670: System.Text.Encoding.CodePages => 0xebac8bfe => 133
	i32 3955647286, ; 671: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 234
	i32 3959773229, ; 672: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 265
	i32 4003436829, ; 673: System.Diagnostics.Process.dll => 0xee9f991d => 29
	i32 4015948917, ; 674: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 233
	i32 4025784931, ; 675: System.Memory => 0xeff49a63 => 62
	i32 4046471985, ; 676: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 210
	i32 4054681211, ; 677: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 90
	i32 4068434129, ; 678: System.Private.Xml.Linq.dll => 0xf27f60d1 => 87
	i32 4073602200, ; 679: System.Threading.dll => 0xf2ce3c98 => 148
	i32 4091086043, ; 680: el\Microsoft.Maui.Controls.resources.dll => 0xf3d904db => 323
	i32 4094352644, ; 681: Microsoft.Maui.Essentials.dll => 0xf40add04 => 212
	i32 4099507663, ; 682: System.Drawing.dll => 0xf45985cf => 36
	i32 4100113165, ; 683: System.Private.Uri => 0xf462c30d => 86
	i32 4101593132, ; 684: Xamarin.AndroidX.Emoji2 => 0xf479582c => 254
	i32 4101842092, ; 685: Microsoft.Extensions.Caching.Memory => 0xf47d24ac => 189
	i32 4103439459, ; 686: uk\Microsoft.Maui.Controls.resources.dll => 0xf4958463 => 347
	i32 4126470640, ; 687: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 192
	i32 4127667938, ; 688: System.IO.FileSystem.Watcher => 0xf60736e2 => 50
	i32 4130442656, ; 689: System.AppContext => 0xf6318da0 => 6
	i32 4147896353, ; 690: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 90
	i32 4150914736, ; 691: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 347
	i32 4151237749, ; 692: System.Core => 0xf76edc75 => 21
	i32 4159265925, ; 693: System.Xml.XmlSerializer => 0xf7e95c85 => 162
	i32 4161255271, ; 694: System.Reflection.TypeExtensions => 0xf807b767 => 96
	i32 4164802419, ; 695: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 50
	i32 4181436372, ; 696: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 113
	i32 4182413190, ; 697: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 270
	i32 4185676441, ; 698: System.Security => 0xf97c5a99 => 130
	i32 4196529839, ; 699: System.Net.WebClient.dll => 0xfa21f6af => 76
	i32 4213026141, ; 700: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 27
	i32 4249188766, ; 701: nb\Microsoft.Maui.Controls.resources.dll => 0xfd45799e => 336
	i32 4256097574, ; 702: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 247
	i32 4258378803, ; 703: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xfdd1b433 => 269
	i32 4260525087, ; 704: System.Buffers => 0xfdf2741f => 7
	i32 4263231520, ; 705: System.IdentityModel.Tokens.Jwt.dll => 0xfe1bc020 => 221
	i32 4271975918, ; 706: Microsoft.Maui.Controls.dll => 0xfea12dee => 209
	i32 4274623895, ; 707: CommunityToolkit.Mvvm.dll => 0xfec99597 => 177
	i32 4274976490, ; 708: System.Runtime.Numerics => 0xfecef6ea => 110
	i32 4292120959, ; 709: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 270
	i32 4292200793, ; 710: MediatR.dll => 0xffd5c959 => 179
	i32 4294763496 ; 711: Xamarin.AndroidX.ExifInterface.dll => 0xfffce3e8 => 256
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [712 x i32] [
	i32 68, ; 0
	i32 67, ; 1
	i32 108, ; 2
	i32 194, ; 3
	i32 266, ; 4
	i32 300, ; 5
	i32 48, ; 6
	i32 318, ; 7
	i32 80, ; 8
	i32 327, ; 9
	i32 145, ; 10
	i32 311, ; 11
	i32 312, ; 12
	i32 30, ; 13
	i32 351, ; 14
	i32 124, ; 15
	i32 213, ; 16
	i32 102, ; 17
	i32 335, ; 18
	i32 284, ; 19
	i32 107, ; 20
	i32 284, ; 21
	i32 139, ; 22
	i32 304, ; 23
	i32 350, ; 24
	i32 343, ; 25
	i32 77, ; 26
	i32 124, ; 27
	i32 13, ; 28
	i32 240, ; 29
	i32 132, ; 30
	i32 286, ; 31
	i32 151, ; 32
	i32 18, ; 33
	i32 238, ; 34
	i32 26, ; 35
	i32 260, ; 36
	i32 1, ; 37
	i32 59, ; 38
	i32 42, ; 39
	i32 91, ; 40
	i32 243, ; 41
	i32 316, ; 42
	i32 313, ; 43
	i32 147, ; 44
	i32 262, ; 45
	i32 259, ; 46
	i32 54, ; 47
	i32 69, ; 48
	i32 348, ; 49
	i32 229, ; 50
	i32 83, ; 51
	i32 326, ; 52
	i32 214, ; 53
	i32 261, ; 54
	i32 217, ; 55
	i32 131, ; 56
	i32 55, ; 57
	i32 149, ; 58
	i32 74, ; 59
	i32 145, ; 60
	i32 62, ; 61
	i32 146, ; 62
	i32 355, ; 63
	i32 165, ; 64
	i32 180, ; 65
	i32 346, ; 66
	i32 244, ; 67
	i32 12, ; 68
	i32 257, ; 69
	i32 125, ; 70
	i32 152, ; 71
	i32 113, ; 72
	i32 166, ; 73
	i32 164, ; 74
	i32 259, ; 75
	i32 202, ; 76
	i32 272, ; 77
	i32 324, ; 78
	i32 84, ; 79
	i32 199, ; 80
	i32 150, ; 81
	i32 304, ; 82
	i32 60, ; 83
	i32 310, ; 84
	i32 345, ; 85
	i32 195, ; 86
	i32 51, ; 87
	i32 103, ; 88
	i32 114, ; 89
	i32 312, ; 90
	i32 181, ; 91
	i32 40, ; 92
	i32 297, ; 93
	i32 295, ; 94
	i32 120, ; 95
	i32 175, ; 96
	i32 52, ; 97
	i32 44, ; 98
	i32 119, ; 99
	i32 249, ; 100
	i32 337, ; 101
	i32 255, ; 102
	i32 81, ; 103
	i32 136, ; 104
	i32 291, ; 105
	i32 236, ; 106
	i32 8, ; 107
	i32 73, ; 108
	i32 155, ; 109
	i32 306, ; 110
	i32 154, ; 111
	i32 92, ; 112
	i32 301, ; 113
	i32 45, ; 114
	i32 305, ; 115
	i32 109, ; 116
	i32 129, ; 117
	i32 215, ; 118
	i32 25, ; 119
	i32 226, ; 120
	i32 72, ; 121
	i32 55, ; 122
	i32 46, ; 123
	i32 343, ; 124
	i32 198, ; 125
	i32 250, ; 126
	i32 22, ; 127
	i32 264, ; 128
	i32 86, ; 129
	i32 43, ; 130
	i32 160, ; 131
	i32 71, ; 132
	i32 354, ; 133
	i32 277, ; 134
	i32 328, ; 135
	i32 3, ; 136
	i32 42, ; 137
	i32 63, ; 138
	i32 342, ; 139
	i32 16, ; 140
	i32 53, ; 141
	i32 339, ; 142
	i32 300, ; 143
	i32 105, ; 144
	i32 316, ; 145
	i32 305, ; 146
	i32 332, ; 147
	i32 298, ; 148
	i32 261, ; 149
	i32 34, ; 150
	i32 158, ; 151
	i32 85, ; 152
	i32 32, ; 153
	i32 341, ; 154
	i32 12, ; 155
	i32 51, ; 156
	i32 56, ; 157
	i32 281, ; 158
	i32 36, ; 159
	i32 193, ; 160
	i32 299, ; 161
	i32 234, ; 162
	i32 35, ; 163
	i32 322, ; 164
	i32 58, ; 165
	i32 268, ; 166
	i32 201, ; 167
	i32 178, ; 168
	i32 17, ; 169
	i32 302, ; 170
	i32 220, ; 171
	i32 164, ; 172
	i32 344, ; 173
	i32 352, ; 174
	i32 338, ; 175
	i32 334, ; 176
	i32 267, ; 177
	i32 197, ; 178
	i32 182, ; 179
	i32 294, ; 180
	i32 185, ; 181
	i32 340, ; 182
	i32 153, ; 183
	i32 290, ; 184
	i32 275, ; 185
	i32 185, ; 186
	i32 236, ; 187
	i32 189, ; 188
	i32 29, ; 189
	i32 177, ; 190
	i32 52, ; 191
	i32 295, ; 192
	i32 5, ; 193
	i32 320, ; 194
	i32 285, ; 195
	i32 289, ; 196
	i32 241, ; 197
	i32 306, ; 198
	i32 233, ; 199
	i32 216, ; 200
	i32 252, ; 201
	i32 329, ; 202
	i32 85, ; 203
	i32 294, ; 204
	i32 61, ; 205
	i32 112, ; 206
	i32 349, ; 207
	i32 57, ; 208
	i32 350, ; 209
	i32 281, ; 210
	i32 99, ; 211
	i32 19, ; 212
	i32 245, ; 213
	i32 111, ; 214
	i32 101, ; 215
	i32 102, ; 216
	i32 318, ; 217
	i32 104, ; 218
	i32 298, ; 219
	i32 71, ; 220
	i32 38, ; 221
	i32 32, ; 222
	i32 103, ; 223
	i32 73, ; 224
	i32 221, ; 225
	i32 324, ; 226
	i32 9, ; 227
	i32 123, ; 228
	i32 46, ; 229
	i32 235, ; 230
	i32 199, ; 231
	i32 9, ; 232
	i32 43, ; 233
	i32 4, ; 234
	i32 282, ; 235
	i32 183, ; 236
	i32 203, ; 237
	i32 348, ; 238
	i32 31, ; 239
	i32 138, ; 240
	i32 92, ; 241
	i32 93, ; 242
	i32 223, ; 243
	i32 49, ; 244
	i32 141, ; 245
	i32 112, ; 246
	i32 140, ; 247
	i32 174, ; 248
	i32 251, ; 249
	i32 115, ; 250
	i32 317, ; 251
	i32 299, ; 252
	i32 157, ; 253
	i32 76, ; 254
	i32 79, ; 255
	i32 271, ; 256
	i32 37, ; 257
	i32 293, ; 258
	i32 206, ; 259
	i32 176, ; 260
	i32 255, ; 261
	i32 248, ; 262
	i32 64, ; 263
	i32 138, ; 264
	i32 15, ; 265
	i32 116, ; 266
	i32 287, ; 267
	i32 296, ; 268
	i32 243, ; 269
	i32 48, ; 270
	i32 70, ; 271
	i32 80, ; 272
	i32 126, ; 273
	i32 183, ; 274
	i32 184, ; 275
	i32 94, ; 276
	i32 121, ; 277
	i32 303, ; 278
	i32 26, ; 279
	i32 217, ; 280
	i32 264, ; 281
	i32 97, ; 282
	i32 28, ; 283
	i32 239, ; 284
	i32 319, ; 285
	i32 149, ; 286
	i32 169, ; 287
	i32 4, ; 288
	i32 98, ; 289
	i32 33, ; 290
	i32 93, ; 291
	i32 286, ; 292
	i32 195, ; 293
	i32 21, ; 294
	i32 41, ; 295
	i32 170, ; 296
	i32 335, ; 297
	i32 257, ; 298
	i32 327, ; 299
	i32 200, ; 300
	i32 181, ; 301
	i32 309, ; 302
	i32 271, ; 303
	i32 302, ; 304
	i32 296, ; 305
	i32 276, ; 306
	i32 2, ; 307
	i32 134, ; 308
	i32 111, ; 309
	i32 315, ; 310
	i32 353, ; 311
	i32 196, ; 312
	i32 226, ; 313
	i32 344, ; 314
	i32 58, ; 315
	i32 95, ; 316
	i32 206, ; 317
	i32 326, ; 318
	i32 39, ; 319
	i32 237, ; 320
	i32 187, ; 321
	i32 25, ; 322
	i32 94, ; 323
	i32 320, ; 324
	i32 89, ; 325
	i32 99, ; 326
	i32 10, ; 327
	i32 87, ; 328
	i32 353, ; 329
	i32 331, ; 330
	i32 100, ; 331
	i32 283, ; 332
	i32 190, ; 333
	i32 303, ; 334
	i32 228, ; 335
	i32 207, ; 336
	i32 323, ; 337
	i32 7, ; 338
	i32 187, ; 339
	i32 268, ; 340
	i32 225, ; 341
	i32 201, ; 342
	i32 88, ; 343
	i32 263, ; 344
	i32 154, ; 345
	i32 322, ; 346
	i32 33, ; 347
	i32 116, ; 348
	i32 82, ; 349
	i32 218, ; 350
	i32 20, ; 351
	i32 314, ; 352
	i32 317, ; 353
	i32 11, ; 354
	i32 162, ; 355
	i32 3, ; 356
	i32 211, ; 357
	i32 330, ; 358
	i32 198, ; 359
	i32 196, ; 360
	i32 84, ; 361
	i32 194, ; 362
	i32 307, ; 363
	i32 64, ; 364
	i32 332, ; 365
	i32 290, ; 366
	i32 143, ; 367
	i32 314, ; 368
	i32 272, ; 369
	i32 157, ; 370
	i32 184, ; 371
	i32 205, ; 372
	i32 41, ; 373
	i32 117, ; 374
	i32 191, ; 375
	i32 227, ; 376
	i32 279, ; 377
	i32 131, ; 378
	i32 75, ; 379
	i32 66, ; 380
	i32 336, ; 381
	i32 172, ; 382
	i32 313, ; 383
	i32 231, ; 384
	i32 143, ; 385
	i32 106, ; 386
	i32 151, ; 387
	i32 70, ; 388
	i32 330, ; 389
	i32 156, ; 390
	i32 204, ; 391
	i32 190, ; 392
	i32 121, ; 393
	i32 127, ; 394
	i32 331, ; 395
	i32 152, ; 396
	i32 254, ; 397
	i32 141, ; 398
	i32 241, ; 399
	i32 328, ; 400
	i32 20, ; 401
	i32 14, ; 402
	i32 135, ; 403
	i32 75, ; 404
	i32 59, ; 405
	i32 215, ; 406
	i32 244, ; 407
	i32 167, ; 408
	i32 168, ; 409
	i32 209, ; 410
	i32 15, ; 411
	i32 74, ; 412
	i32 6, ; 413
	i32 23, ; 414
	i32 334, ; 415
	i32 266, ; 416
	i32 220, ; 417
	i32 225, ; 418
	i32 91, ; 419
	i32 308, ; 420
	i32 329, ; 421
	i32 1, ; 422
	i32 136, ; 423
	i32 333, ; 424
	i32 267, ; 425
	i32 289, ; 426
	i32 134, ; 427
	i32 69, ; 428
	i32 146, ; 429
	i32 338, ; 430
	i32 307, ; 431
	i32 258, ; 432
	i32 179, ; 433
	i32 197, ; 434
	i32 88, ; 435
	i32 96, ; 436
	i32 248, ; 437
	i32 253, ; 438
	i32 333, ; 439
	i32 31, ; 440
	i32 222, ; 441
	i32 45, ; 442
	i32 262, ; 443
	i32 186, ; 444
	i32 204, ; 445
	i32 173, ; 446
	i32 224, ; 447
	i32 227, ; 448
	i32 109, ; 449
	i32 158, ; 450
	i32 35, ; 451
	i32 22, ; 452
	i32 174, ; 453
	i32 180, ; 454
	i32 114, ; 455
	i32 57, ; 456
	i32 287, ; 457
	i32 144, ; 458
	i32 118, ; 459
	i32 120, ; 460
	i32 110, ; 461
	i32 229, ; 462
	i32 139, ; 463
	i32 235, ; 464
	i32 200, ; 465
	i32 319, ; 466
	i32 54, ; 467
	i32 105, ; 468
	i32 339, ; 469
	i32 214, ; 470
	i32 210, ; 471
	i32 211, ; 472
	i32 133, ; 473
	i32 301, ; 474
	i32 292, ; 475
	i32 280, ; 476
	i32 345, ; 477
	i32 258, ; 478
	i32 213, ; 479
	i32 159, ; 480
	i32 245, ; 481
	i32 163, ; 482
	i32 132, ; 483
	i32 280, ; 484
	i32 161, ; 485
	i32 269, ; 486
	i32 186, ; 487
	i32 140, ; 488
	i32 292, ; 489
	i32 288, ; 490
	i32 169, ; 491
	i32 212, ; 492
	i32 224, ; 493
	i32 176, ; 494
	i32 230, ; 495
	i32 297, ; 496
	i32 40, ; 497
	i32 256, ; 498
	i32 81, ; 499
	i32 56, ; 500
	i32 37, ; 501
	i32 97, ; 502
	i32 166, ; 503
	i32 172, ; 504
	i32 293, ; 505
	i32 82, ; 506
	i32 232, ; 507
	i32 98, ; 508
	i32 30, ; 509
	i32 159, ; 510
	i32 219, ; 511
	i32 18, ; 512
	i32 127, ; 513
	i32 119, ; 514
	i32 252, ; 515
	i32 283, ; 516
	i32 265, ; 517
	i32 219, ; 518
	i32 285, ; 519
	i32 165, ; 520
	i32 315, ; 521
	i32 260, ; 522
	i32 222, ; 523
	i32 355, ; 524
	i32 325, ; 525
	i32 282, ; 526
	i32 273, ; 527
	i32 170, ; 528
	i32 16, ; 529
	i32 188, ; 530
	i32 0, ; 531
	i32 144, ; 532
	i32 207, ; 533
	i32 125, ; 534
	i32 118, ; 535
	i32 38, ; 536
	i32 115, ; 537
	i32 47, ; 538
	i32 142, ; 539
	i32 117, ; 540
	i32 34, ; 541
	i32 178, ; 542
	i32 95, ; 543
	i32 53, ; 544
	i32 274, ; 545
	i32 129, ; 546
	i32 153, ; 547
	i32 188, ; 548
	i32 24, ; 549
	i32 161, ; 550
	i32 251, ; 551
	i32 148, ; 552
	i32 104, ; 553
	i32 89, ; 554
	i32 239, ; 555
	i32 60, ; 556
	i32 142, ; 557
	i32 100, ; 558
	i32 5, ; 559
	i32 13, ; 560
	i32 122, ; 561
	i32 135, ; 562
	i32 28, ; 563
	i32 325, ; 564
	i32 203, ; 565
	i32 72, ; 566
	i32 249, ; 567
	i32 24, ; 568
	i32 237, ; 569
	i32 310, ; 570
	i32 278, ; 571
	i32 275, ; 572
	i32 342, ; 573
	i32 137, ; 574
	i32 216, ; 575
	i32 230, ; 576
	i32 246, ; 577
	i32 168, ; 578
	i32 205, ; 579
	i32 279, ; 580
	i32 0, ; 581
	i32 321, ; 582
	i32 101, ; 583
	i32 123, ; 584
	i32 250, ; 585
	i32 192, ; 586
	i32 163, ; 587
	i32 167, ; 588
	i32 253, ; 589
	i32 39, ; 590
	i32 208, ; 591
	i32 340, ; 592
	i32 17, ; 593
	i32 171, ; 594
	i32 341, ; 595
	i32 137, ; 596
	i32 150, ; 597
	i32 242, ; 598
	i32 354, ; 599
	i32 155, ; 600
	i32 130, ; 601
	i32 19, ; 602
	i32 65, ; 603
	i32 182, ; 604
	i32 308, ; 605
	i32 147, ; 606
	i32 173, ; 607
	i32 47, ; 608
	i32 223, ; 609
	i32 349, ; 610
	i32 351, ; 611
	i32 228, ; 612
	i32 79, ; 613
	i32 61, ; 614
	i32 106, ; 615
	i32 277, ; 616
	i32 232, ; 617
	i32 49, ; 618
	i32 263, ; 619
	i32 346, ; 620
	i32 274, ; 621
	i32 14, ; 622
	i32 352, ; 623
	i32 191, ; 624
	i32 68, ; 625
	i32 171, ; 626
	i32 238, ; 627
	i32 242, ; 628
	i32 202, ; 629
	i32 78, ; 630
	i32 247, ; 631
	i32 108, ; 632
	i32 231, ; 633
	i32 273, ; 634
	i32 67, ; 635
	i32 63, ; 636
	i32 27, ; 637
	i32 160, ; 638
	i32 321, ; 639
	i32 218, ; 640
	i32 240, ; 641
	i32 10, ; 642
	i32 208, ; 643
	i32 11, ; 644
	i32 175, ; 645
	i32 78, ; 646
	i32 126, ; 647
	i32 83, ; 648
	i32 193, ; 649
	i32 66, ; 650
	i32 309, ; 651
	i32 107, ; 652
	i32 65, ; 653
	i32 128, ; 654
	i32 122, ; 655
	i32 77, ; 656
	i32 288, ; 657
	i32 278, ; 658
	i32 8, ; 659
	i32 246, ; 660
	i32 2, ; 661
	i32 337, ; 662
	i32 44, ; 663
	i32 291, ; 664
	i32 156, ; 665
	i32 128, ; 666
	i32 276, ; 667
	i32 23, ; 668
	i32 311, ; 669
	i32 133, ; 670
	i32 234, ; 671
	i32 265, ; 672
	i32 29, ; 673
	i32 233, ; 674
	i32 62, ; 675
	i32 210, ; 676
	i32 90, ; 677
	i32 87, ; 678
	i32 148, ; 679
	i32 323, ; 680
	i32 212, ; 681
	i32 36, ; 682
	i32 86, ; 683
	i32 254, ; 684
	i32 189, ; 685
	i32 347, ; 686
	i32 192, ; 687
	i32 50, ; 688
	i32 6, ; 689
	i32 90, ; 690
	i32 347, ; 691
	i32 21, ; 692
	i32 162, ; 693
	i32 96, ; 694
	i32 50, ; 695
	i32 113, ; 696
	i32 270, ; 697
	i32 130, ; 698
	i32 76, ; 699
	i32 27, ; 700
	i32 336, ; 701
	i32 247, ; 702
	i32 269, ; 703
	i32 7, ; 704
	i32 221, ; 705
	i32 209, ; 706
	i32 177, ; 707
	i32 110, ; 708
	i32 270, ; 709
	i32 179, ; 710
	i32 256 ; 711
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
