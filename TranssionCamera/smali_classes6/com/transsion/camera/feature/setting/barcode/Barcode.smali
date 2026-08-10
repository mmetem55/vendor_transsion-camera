.class public Lcom/transsion/camera/feature/setting/barcode/Barcode;
.super Lcom/transsion/camera/app/common/setting/SettingBase;
.source "Barcode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/setting/barcode/Barcode$StatusChangeListener;
    }
.end annotation


# static fields
.field private static final CLOSE_BARCODE_TIME:I = 0xbb8

.field private static final MSG_PREVIEW_BARCODE:I = 0x7b

.field private static final NO_BARCODE_TIME:I = 0x3e8

.field private static final SCAN_BARCODE_TIME:I = 0xbb8


# instance fields
.field private final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private arrayList0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private arrayList1:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private arrayList2:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private barcode:Lnet/sourceforge/zbar/Image;

.field private mBarcodeDefaultOpenCountrys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBarcodeParameterConfigure:Lcom/transsion/camera/feature/setting/barcode/BarcodeParameterConfigure;

.field private mCameraID:Ljava/lang/String;

.field private mCanScanBarcode:Z

.field private mDataCallback:Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

.field private mImageScanner:Lnet/sourceforge/zbar/ImageScanner;

.field private mIsAsdMode:Z

.field private mIsBarcodeDefaultOpen:Z

.field private mIsBarcodeScanWating:Z

.field private mIsFirstAnalysisBarcode:Z

.field private mIsModeSupport:Z

.field private mLastAnalysisTime:J

.field private mLastScannedTime:J

.field private mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

.field private final mQRCodeThread:Landroid/os/HandlerThread;

.field private mQRHandler:Landroid/os/Handler;

.field public mQRLocation:[I

.field private mResult:[Ljava/lang/String;

.field private mSatReplaceWide:Z

.field mSettingPreviewDataCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;

.field private mStatusChangeListener:Lcom/transsion/camera/feature/setting/barcode/Barcode$StatusChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 38

    move-object/from16 v0, p0

    .line 44
    invoke-direct/range {p0 .. p0}, Lcom/transsion/camera/app/common/setting/SettingBase;-><init>()V

    .line 45
    new-instance v1, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v2, Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 47
    new-instance v1, Lnet/sourceforge/zbar/Image;

    const-string v2, "Y800"

    invoke-direct {v1, v2}, Lnet/sourceforge/zbar/Image;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->barcode:Lnet/sourceforge/zbar/Image;

    .line 50
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "QRCodeThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mQRCodeThread:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    .line 63
    iput-boolean v1, v0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mIsModeSupport:Z

    const/4 v2, 0x1

    .line 66
    iput-boolean v2, v0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mCanScanBarcode:Z

    .line 67
    iput-boolean v1, v0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mIsAsdMode:Z

    .line 68
    iput-boolean v1, v0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mSatReplaceWide:Z

    .line 70
    iput-boolean v2, v0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mIsFirstAnalysisBarcode:Z

    .line 71
    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "SA"

    const-string v3, "QA"

    const-string v4, "AE"

    const-string v5, "IQ"

    const-string v6, "IL"

    const-string v7, "PS"

    const-string v8, "LB"

    const-string v9, "JO"

    const-string v10, "BY"

    const-string v11, "KZ"

    const-string v12, "UA"

    const-string v13, "RU"

    const-string v14, "LK"

    const-string v15, "VN"

    const-string v16, "LA"

    const-string v17, "KH"

    const-string v18, "TH"

    const-string v19, "MY"

    const-string v20, "SG"

    const-string v21, "BN"

    const-string v22, "ID"

    const-string v23, "KI"

    const-string v24, "PH"

    const-string v25, "PG"

    const-string v26, "CO"

    const-string v27, "BO"

    const-string v28, "PE"

    const-string v29, "CL"

    const-string v30, "BR"

    const-string v31, "PY"

    const-string v32, "EC"

    const-string v33, "UY"

    const-string v34, "PK"

    const-string v35, "BD"

    const-string v36, "IN"

    const-string v37, "NP"

    filled-new-array/range {v2 .. v37}, [Ljava/lang/String;

    move-result-object v2

    .line 72
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mBarcodeDefaultOpenCountrys:Ljava/util/ArrayList;

    .line 127
    new-instance v1, Lcom/transsion/camera/feature/setting/barcode/Barcode$StatusChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/transsion/camera/feature/setting/barcode/Barcode$StatusChangeListener;-><init>(Lcom/transsion/camera/feature/setting/barcode/Barcode;Lcom/transsion/camera/feature/setting/barcode/Barcode$1;)V

    iput-object v1, v0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mStatusChangeListener:Lcom/transsion/camera/feature/setting/barcode/Barcode$StatusChangeListener;

    .line 203
    new-instance v1, Lcom/transsion/camera/feature/setting/barcode/Barcode$1;

    invoke-direct {v1, v0}, Lcom/transsion/camera/feature/setting/barcode/Barcode$1;-><init>(Lcom/transsion/camera/feature/setting/barcode/Barcode;)V

    iput-object v1, v0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    .line 233
    new-instance v1, Lcom/transsion/camera/feature/setting/barcode/Barcode$2;

    invoke-direct {v1, v0}, Lcom/transsion/camera/feature/setting/barcode/Barcode$2;-><init>(Lcom/transsion/camera/feature/setting/barcode/Barcode;)V

    iput-object v1, v0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mSettingPreviewDataCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Landroid/os/HandlerThread;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mQRCodeThread:Landroid/os/HandlerThread;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mIsBarcodeScanWating:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/transsion/camera/feature/setting/barcode/Barcode;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mIsBarcodeScanWating:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Lnet/sourceforge/zbar/ImageScanner;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mImageScanner:Lnet/sourceforge/zbar/ImageScanner;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/transsion/camera/feature/setting/barcode/Barcode;Lnet/sourceforge/zbar/ImageScanner;)Lnet/sourceforge/zbar/ImageScanner;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mImageScanner:Lnet/sourceforge/zbar/ImageScanner;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/transsion/camera/feature/setting/barcode/Barcode;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->initChildHandler()V

    return-void
.end method

.method static synthetic access$1400(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Lnet/sourceforge/zbar/Image;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->barcode:Lnet/sourceforge/zbar/Image;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mIsFirstAnalysisBarcode:Z

    return p0
.end method

.method static synthetic access$1502(Lcom/transsion/camera/feature/setting/barcode/Barcode;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mIsFirstAnalysisBarcode:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/transsion/camera/feature/setting/barcode/Barcode;)J
    .locals 2

    .line 44
    iget-wide v0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mLastScannedTime:J

    return-wide v0
.end method

.method static synthetic access$1602(Lcom/transsion/camera/feature/setting/barcode/Barcode;J)J
    .locals 0

    .line 44
    iput-wide p1, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mLastScannedTime:J

    return-wide p1
.end method

.method static synthetic access$1700(Lcom/transsion/camera/feature/setting/barcode/Barcode;)[Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mResult:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/transsion/camera/feature/setting/barcode/Barcode;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mResult:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Ljava/util/ArrayList;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->arrayList0:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Ljava/util/ArrayList;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->arrayList1:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Landroid/os/Handler;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mQRHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Ljava/util/ArrayList;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->arrayList2:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mCanScanBarcode:Z

    return p0
.end method

.method static synthetic access$302(Lcom/transsion/camera/feature/setting/barcode/Barcode;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mCanScanBarcode:Z

    return p1
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Lcom/transsion/camera/feature/setting/barcode/BarcodeParameterConfigure;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mBarcodeParameterConfigure:Lcom/transsion/camera/feature/setting/barcode/BarcodeParameterConfigure;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mDataCallback:Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    return-object p0
.end method

.method static synthetic access$502(Lcom/transsion/camera/feature/setting/barcode/Barcode;Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mDataCallback:Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    return-object p1
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/setting/barcode/Barcode;)J
    .locals 2

    .line 44
    iget-wide v0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mLastAnalysisTime:J

    return-wide v0
.end method

.method static synthetic access$602(Lcom/transsion/camera/feature/setting/barcode/Barcode;J)J
    .locals 0

    .line 44
    iput-wide p1, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mLastAnalysisTime:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-object p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mIsModeSupport:Z

    return p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mCameraID:Ljava/lang/String;

    return-object p0
.end method

.method private getCountryCode()Ljava/lang/String;
    .locals 2

    const-string p0, "persist.sys.current_set"

    const-string v0, ""

    .line 104
    invoke-static {p0, v0}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 105
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "persist.sys.oobe_country"

    .line 106
    invoke-static {p0, v0}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private initBarcodeDefault()Z
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCountryCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mBarcodeDefaultOpenCountrys:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->getCountryCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private initChildHandler()V
    .locals 2

    .line 266
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mLastAnalysisTime:J

    .line 267
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->arrayList0:Ljava/util/ArrayList;

    .line 268
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->arrayList1:Ljava/util/ArrayList;

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->arrayList2:Ljava/util/ArrayList;

    .line 270
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mQRCodeThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 271
    new-instance v0, Lcom/transsion/camera/feature/setting/barcode/Barcode$3;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mQRCodeThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/setting/barcode/Barcode$3;-><init>(Lcom/transsion/camera/feature/setting/barcode/Barcode;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mQRHandler:Landroid/os/Handler;

    return-void
.end method

.method private registerKeyToMonitor(Ljava/lang/String;)V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mStatusChangeListener:Lcom/transsion/camera/feature/setting/barcode/Barcode$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method private unRegisterKeyToMonitor(Ljava/lang/String;)V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mStatusChangeListener:Lcom/transsion/camera/feature/setting/barcode/Barcode$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic forceApplyValue(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->forceApplyValue(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic forceUpdateValue(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->forceUpdateValue(Ljava/lang/String;)V

    return-void
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_setting_barcode"

    return-object p0
.end method

.method public getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mBarcodeParameterConfigure:Lcom/transsion/camera/feature/setting/barcode/BarcodeParameterConfigure;

    if-nez v0, :cond_0

    .line 228
    new-instance v0, Lcom/transsion/camera/feature/setting/barcode/BarcodeParameterConfigure;

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/setting/barcode/BarcodeParameterConfigure;-><init>(Lcom/transsion/camera/feature/setting/barcode/Barcode;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mBarcodeParameterConfigure:Lcom/transsion/camera/feature/setting/barcode/BarcodeParameterConfigure;

    .line 230
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mBarcodeParameterConfigure:Lcom/transsion/camera/feature/setting/barcode/BarcodeParameterConfigure;

    return-object p0
.end method

.method public getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;
    .locals 0

    .line 197
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mPreviewStateCallback:Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;

    return-object p0
.end method

.method public getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .locals 0

    .line 155
    sget-object p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    return-object p0
.end method

.method public getSupport()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 222
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .locals 0

    .line 118
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 119
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->initBarcodeDefault()Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mIsBarcodeDefaultOpen:Z

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "sat_replace_wide"

    invoke-static {p1, p3, p2}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mSatReplaceWide:Z

    .line 121
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_0

    const-string p1, "key_picture_size"

    .line 122
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->registerKeyToMonitor(Ljava/lang/String;)V

    const-string p1, "key_setting_fragment_notify_ui"

    .line 123
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->registerKeyToMonitor(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 78
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mCameraID:Ljava/lang/String;

    .line 79
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedPlatformValues(Ljava/util/List;)V

    .line 80
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setSupportedEntryValues(Ljava/util/List;)V

    .line 81
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setEntryValues(Ljava/util/List;)V

    .line 84
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 85
    iget-boolean p2, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mIsBarcodeDefaultOpen:Z

    if-eqz p2, :cond_0

    const-string p2, "on"

    goto :goto_0

    :cond_0
    const-string p2, "off"

    .line 91
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_setting_barcode"

    invoke-virtual {v0, v2, p2, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 94
    iget-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v2, p2, v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    move-object v0, p2

    .line 99
    :cond_2
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->setDefaultValue(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public isInsensorZoomStatus()Z
    .locals 1

    .line 410
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mIsAsdMode:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mSatReplaceWide:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isModeSupport()Z
    .locals 0

    .line 406
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mIsModeSupport:Z

    return p0
.end method

.method public declared-synchronized onModeClosed(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 376
    :try_start_0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    .line 377
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "Setting onModeClosed"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 378
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mIsAsdMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 379
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
    .locals 0

    .line 365
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V

    .line 366
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mIsModeSupport:Z

    const-string p2, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    .line 367
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 368
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mIsModeSupport:Z

    .line 369
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mIsAsdMode:Z

    :cond_0
    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .locals 4

    .line 173
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 174
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onValueChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 175
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 178
    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->setValue(Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 180
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 179
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "on"

    .line 182
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mBarcodeParameterConfigure:Lcom/transsion/camera/feature/setting/barcode/BarcodeParameterConfigure;

    if-eqz v0, :cond_2

    .line 184
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TextUtils.equals(\"on\",value): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 185
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mBarcodeParameterConfigure:Lcom/transsion/camera/feature/setting/barcode/BarcodeParameterConfigure;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/barcode/BarcodeParameterConfigure;->sendSettingChangeRequest()V

    goto :goto_0

    :cond_1
    const-string v0, "off"

    .line 187
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 188
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mBarcodeParameterConfigure:Lcom/transsion/camera/feature/setting/barcode/BarcodeParameterConfigure;

    if-eqz v0, :cond_2

    .line 189
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TextUtils.equals(\"off\",value): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 190
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mBarcodeParameterConfigure:Lcom/transsion/camera/feature/setting/barcode/BarcodeParameterConfigure;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/barcode/BarcodeParameterConfigure;->sendSettingChangeRequest()V

    :cond_2
    :goto_0
    return-void
.end method

.method public resume()V
    .locals 0

    .line 383
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->resume()V

    return-void
.end method

.method public bridge synthetic setRestrict3ATouchArea(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->setRestrict3ATouchArea(Landroid/graphics/Rect;)V

    return-void
.end method

.method public unInit()V
    .locals 2

    .line 389
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->unInit()V

    .line 390
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mQRHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 391
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 392
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mQRHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mQRCodeThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 395
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 397
    :cond_1
    iput-object v1, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mDataCallback:Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    .line 398
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_2

    const-string v0, "key_picture_size"

    .line 399
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    const-string v0, "key_setting_fragment_notify_ui"

    .line 400
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
