.class public Lcom/transsion/camera/app/common/storage/AppStorageManager;
.super Ljava/lang/Object;
.source "AppStorageManager.java"

# interfaces
.implements Lcom/transsion/camera/app/common/storage/IStorage$IStorageSettingProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/storage/AppStorageManager$StorageChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

.field private mCurrentVolume:Ljava/lang/String;

.field private final mExternalStorageOperator:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

.field private mExternalStorageVolume:Landroid/os/storage/StorageVolume;

.field private final mIntentProxy:Lcom/transsion/camera/app/common/IApp$IIntentProxy;

.field private final mInternalStorageOperator:Lcom/transsion/camera/app/common/storage/InternalStorageOperator;

.field private mIsPermissionRequesting:Z

.field private mIsResumed:Z

.field private mIsSwitchExternalStorageManual:Z

.field private mNeedReCheckSdcardPermission:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mStorageAvailable:Z

.field private final mStorageManager:Landroid/os/storage/StorageManager;

.field private mStorageSetting:Lcom/transsion/camera/app/common/storage/StorageSetting;

.field private mStorageVolumeListener:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperatorListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AppStorageManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IApp$IIntentProxy;)V
    .locals 4

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mCurrentVolume:Ljava/lang/String;

    const/4 v1, 0x0

    .line 56
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mIsPermissionRequesting:Z

    .line 57
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mIsResumed:Z

    .line 59
    new-instance v2, Lcom/transsion/camera/app/common/storage/InternalStorageOperator;

    invoke-direct {v2}, Lcom/transsion/camera/app/common/storage/InternalStorageOperator;-><init>()V

    iput-object v2, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mInternalStorageOperator:Lcom/transsion/camera/app/common/storage/InternalStorageOperator;

    .line 60
    new-instance v3, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    invoke-direct {v3}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;-><init>()V

    iput-object v3, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mExternalStorageOperator:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    .line 61
    iput-object v2, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mCurrentStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    .line 69
    new-instance v2, Lcom/transsion/camera/app/common/storage/AppStorageManager$StorageChangeListener;

    invoke-direct {v2, p0, v0}, Lcom/transsion/camera/app/common/storage/AppStorageManager$StorageChangeListener;-><init>(Lcom/transsion/camera/app/common/storage/AppStorageManager;Lcom/transsion/camera/app/common/storage/AppStorageManager$1;)V

    iput-object v2, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 73
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mIsSwitchExternalStorageManual:Z

    .line 74
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mNeedReCheckSdcardPermission:Z

    const/4 v0, 0x1

    .line 75
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mStorageAvailable:Z

    .line 418
    new-instance v0, Lcom/transsion/camera/app/common/storage/AppStorageManager$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/storage/AppStorageManager$2;-><init>(Lcom/transsion/camera/app/common/storage/AppStorageManager;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 78
    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mContext:Landroid/content/Context;

    .line 79
    iput-object p2, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mIntentProxy:Lcom/transsion/camera/app/common/IApp$IIntentProxy;

    .line 80
    const-class p2, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/StorageManager;

    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mStorageManager:Landroid/os/storage/StorageManager;

    return-void
.end method

.method static synthetic access$100()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 47
    sget-object v0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/transsion/camera/app/common/storage/AppStorageManager;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->onExternalStorageUnMounted()V

    return-void
.end method

.method static synthetic access$1100(Lcom/transsion/camera/app/common/storage/AppStorageManager;)Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperatorListener;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mStorageVolumeListener:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperatorListener;

    return-object p0
.end method

.method static synthetic access$1200(Landroid/os/storage/StorageVolume;)Z
    .locals 0

    .line 47
    invoke-static {p0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->isInternalStorage(Landroid/os/storage/StorageVolume;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/transsion/camera/app/common/storage/AppStorageManager;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mStorageAvailable:Z

    return p0
.end method

.method static synthetic access$1302(Lcom/transsion/camera/app/common/storage/AppStorageManager;Z)Z
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mStorageAvailable:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/transsion/camera/app/common/storage/AppStorageManager;)Lcom/transsion/camera/app/common/storage/InternalStorageOperator;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mInternalStorageOperator:Lcom/transsion/camera/app/common/storage/InternalStorageOperator;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/transsion/camera/app/common/storage/AppStorageManager;Landroid/os/storage/StorageVolume;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->onExternalStorageMounted(Landroid/os/storage/StorageVolume;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/transsion/camera/app/common/storage/AppStorageManager;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mIsResumed:Z

    return p0
.end method

.method static synthetic access$1702(Lcom/transsion/camera/app/common/storage/AppStorageManager;Z)Z
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mIsSwitchExternalStorageManual:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/transsion/camera/app/common/storage/AppStorageManager;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->checkExternalStoragePermission()V

    return-void
.end method

.method static synthetic access$1900(Lcom/transsion/camera/app/common/storage/AppStorageManager;Ljava/lang/String;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->setCurrentVolume(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$202(Lcom/transsion/camera/app/common/storage/AppStorageManager;Z)Z
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mIsPermissionRequesting:Z

    return p1
.end method

.method static synthetic access$300(Lcom/transsion/camera/app/common/storage/AppStorageManager;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->onExternalStoragePermissionDenied()V

    return-void
.end method

.method static synthetic access$400(Lcom/transsion/camera/app/common/storage/AppStorageManager;)Landroid/os/storage/StorageVolume;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mExternalStorageVolume:Landroid/os/storage/StorageVolume;

    return-object p0
.end method

.method static synthetic access$500(Landroid/os/storage/StorageVolume;Ljava/lang/String;)Landroid/net/Uri;
    .locals 0

    .line 47
    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->buildStorageVolumeTreeUri(Landroid/os/storage/StorageVolume;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/app/common/storage/AppStorageManager;)Lcom/transsion/camera/app/common/storage/StorageSetting;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mStorageSetting:Lcom/transsion/camera/app/common/storage/StorageSetting;

    return-object p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/app/common/storage/AppStorageManager;Landroid/net/Uri;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->onExternalStoragePermissionGranted(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$800(Lcom/transsion/camera/app/common/storage/AppStorageManager;)Landroid/os/storage/StorageManager;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object p0
.end method

.method static synthetic access$900(Landroid/os/storage/StorageManager;Landroid/os/storage/StorageVolume;)Z
    .locals 0

    .line 47
    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->isUsbStorage(Landroid/os/storage/StorageManager;Landroid/os/storage/StorageVolume;)Z

    move-result p0

    return p0
.end method

.method private static buildStorageVolumeTreeUri(Landroid/os/storage/StorageVolume;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    .line 490
    invoke-virtual {p0}, Landroid/os/storage/StorageVolume;->getUuid()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.android.externalstorage.documents"

    .line 489
    invoke-static {v0, p0}, Landroid/provider/DocumentsContract;->buildTreeDocumentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "%3A"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private checkExternalStoragePermission()V
    .locals 7

    .line 267
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    .line 269
    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mExternalStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-static {v1, v0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->buildStorageVolumeTreeUri(Landroid/os/storage/StorageVolume;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 270
    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->isUriGranted(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v2

    .line 271
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/storage/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mExternalStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 272
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    .line 273
    sget-object v4, Lcom/transsion/camera/app/common/storage/AppStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkExternalStoragePermission exist: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkExternalStoragePermission isGranted: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", uri: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 276
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->onExternalStoragePermissionGranted(Landroid/net/Uri;)V

    goto :goto_0

    .line 278
    :cond_0
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mIsSwitchExternalStorageManual:Z

    if-eqz v1, :cond_1

    .line 279
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->requestExternalStoragePermission()V

    goto :goto_0

    :cond_1
    const-string v1, "internal"

    .line 281
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->saveVolumeToSetting(Ljava/lang/String;)V

    .line 282
    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->setCurrentVolume(Ljava/lang/String;I)V

    .line 285
    :goto_0
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mIsSwitchExternalStorageManual:Z

    return-void
.end method

.method private checkStorageVolume()V
    .locals 7

    const/4 v0, 0x0

    .line 204
    iput-object v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mExternalStorageVolume:Landroid/os/storage/StorageVolume;

    .line 206
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getStorageVolumes()Ljava/util/List;

    move-result-object v0

    .line 207
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 208
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageVolume;

    if-nez v2, :cond_1

    .line 210
    sget-object v2, Lcom/transsion/camera/app/common/storage/AppStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "checkStorageVolume volume is null."

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 213
    :cond_1
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v3

    .line 214
    sget-object v4, Lcom/transsion/camera/app/common/storage/AppStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkStorageVolume volume: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", isPrimary: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 214
    invoke-static {v4, v5}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v4, 0x1

    if-le v1, v4, :cond_2

    .line 218
    iget-object v5, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-static {v5, v2}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->isUsbStorage(Landroid/os/storage/StorageManager;Landroid/os/storage/StorageVolume;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .line 222
    :cond_2
    invoke-static {v2}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->isInternalStorage(Landroid/os/storage/StorageVolume;)Z

    move-result v5

    const-string v6, "mounted"

    if-eqz v5, :cond_5

    .line 223
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v3

    const-string v5, "removed"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    .line 224
    iput-boolean v3, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mStorageAvailable:Z

    .line 225
    iget-object v5, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mInternalStorageOperator:Lcom/transsion/camera/app/common/storage/InternalStorageOperator;

    invoke-virtual {v5, v3}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->setStorageAvailable(Z)V

    .line 227
    :cond_3
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 228
    iput-boolean v4, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mStorageAvailable:Z

    .line 229
    iget-object v3, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mInternalStorageOperator:Lcom/transsion/camera/app/common/storage/InternalStorageOperator;

    invoke-virtual {v3, v4}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->setStorageAvailable(Z)V

    .line 231
    :cond_4
    iget-object v3, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mInternalStorageOperator:Lcom/transsion/camera/app/common/storage/InternalStorageOperator;

    invoke-virtual {v3, v2}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->updateStorageVolume(Landroid/os/storage/StorageVolume;)V

    goto/16 :goto_0

    .line 232
    :cond_5
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 233
    iput-boolean v4, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mStorageAvailable:Z

    .line 234
    iput-object v2, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mExternalStorageVolume:Landroid/os/storage/StorageVolume;

    .line 235
    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mExternalStorageOperator:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    invoke-virtual {v2, v4}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->setStorageAvailable(Z)V

    .line 236
    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mExternalStorageOperator:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iget-object v3, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mExternalStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->updateStorageVolume(Landroid/os/storage/StorageVolume;)V

    goto/16 :goto_0

    .line 240
    :cond_6
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mExternalStorageVolume:Landroid/os/storage/StorageVolume;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mExternalStorageOperator:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->isReady()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 241
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->doOnHasExternalStorage()V

    goto :goto_1

    .line 243
    :cond_7
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->doOnNoExternalStorage()V

    :goto_1
    return-void
.end method

.method private static checkUuidIsUsb(Landroid/os/storage/StorageManager;Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "android.os.storage.VolumeInfo"

    .line 522
    invoke-static {v1}, Lcom/transsion/camera/utils/ReflectionUtils;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "android.os.storage.DiskInfo"

    .line 523
    invoke-static {v2}, Lcom/transsion/camera/utils/ReflectionUtils;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v1, :cond_5

    if-nez v2, :cond_1

    goto/16 :goto_1

    .line 528
    :cond_1
    const-class v3, Landroid/os/storage/StorageManager;

    new-array v4, v0, [Ljava/lang/Class;

    const-string v5, "getVolumes"

    invoke-static {v3, v5, v4}, Lcom/transsion/camera/utils/ReflectionUtils;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Class;

    const-string v5, "getDisk"

    .line 529
    invoke-static {v1, v5, v4}, Lcom/transsion/camera/utils/ReflectionUtils;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Class;

    const-string v6, "getFsUuid"

    .line 530
    invoke-static {v1, v6, v5}, Lcom/transsion/camera/utils/ReflectionUtils;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v5, v0, [Ljava/lang/Class;

    const-string v6, "isUsb"

    .line 531
    invoke-static {v2, v6, v5}, Lcom/transsion/camera/utils/ReflectionUtils;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v3, :cond_5

    if-eqz v4, :cond_5

    if-eqz v1, :cond_5

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    new-array v5, v0, [Ljava/lang/Object;

    .line 537
    invoke-static {v3, p0, v5}, Lcom/transsion/camera/utils/ReflectionUtils;->doMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_5

    .line 538
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    .line 541
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    :goto_0
    if-ltz v3, :cond_5

    .line 542
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    new-array v7, v0, [Ljava/lang/Object;

    .line 544
    invoke-static {v1, v6, v7}, Lcom/transsion/camera/utils/ReflectionUtils;->doMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    .line 545
    invoke-static {v7, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    new-array v7, v0, [Ljava/lang/Object;

    .line 546
    invoke-static {v4, v6, v7}, Lcom/transsion/camera/utils/ReflectionUtils;->doMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    new-array v7, v0, [Ljava/lang/Object;

    .line 547
    invoke-static {v2, v6, v7}, Lcom/transsion/camera/utils/ReflectionUtils;->doMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    if-eqz v6, :cond_4

    .line 548
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_4

    return v5

    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_5
    :goto_1
    return v0
.end method

.method private doOnHasExternalStorage()V
    .locals 4

    .line 248
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mStorageSetting:Lcom/transsion/camera/app/common/storage/StorageSetting;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/StorageSetting;->enableExternalStorage()V

    .line 249
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->getVolumeFromSetting()Ljava/lang/String;

    move-result-object v0

    .line 250
    sget-object v1, Lcom/transsion/camera/app/common/storage/AppStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doOnHasExternalStorage storedVolumeValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v1, "external"

    .line 251
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mNeedReCheckSdcardPermission:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "internal"

    .line 255
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->setCurrentVolume(Ljava/lang/String;I)V

    goto :goto_1

    .line 252
    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mNeedReCheckSdcardPermission:Z

    .line 253
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->checkExternalStoragePermission()V

    :goto_1
    return-void
.end method

.method private doOnNoExternalStorage()V
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mStorageSetting:Lcom/transsion/camera/app/common/storage/StorageSetting;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/StorageSetting;->disableExternalStorage()V

    const-string v0, "internal"

    const/4 v1, 0x0

    .line 261
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->setCurrentVolume(Ljava/lang/String;I)V

    return-void
.end method

.method private externalPermissionGranted()Z
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mExternalStorageVolume:Landroid/os/storage/StorageVolume;

    if-nez v0, :cond_0

    .line 177
    sget-object p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "externalPermissionGranted mExternalStorageVolume is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 182
    :cond_0
    sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    .line 184
    invoke-static {v0, v1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->buildStorageVolumeTreeUri(Landroid/os/storage/StorageVolume;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 185
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->isUriGranted(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method private getVolumeFromSetting()Ljava/lang/String;
    .locals 0

    .line 316
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mStorageSetting:Lcom/transsion/camera/app/common/storage/StorageSetting;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/StorageSetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static isInternalStorage(Landroid/os/storage/StorageVolume;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 506
    invoke-virtual {p0}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isUriGranted(Landroid/content/ContentResolver;Landroid/net/Uri;)Z
    .locals 1

    .line 495
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getPersistedUriPermissions()Ljava/util/List;

    move-result-object p0

    .line 496
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/UriPermission;

    .line 497
    invoke-virtual {v0}, Landroid/content/UriPermission;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 498
    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static isUsbStorage(Landroid/os/storage/StorageManager;Landroid/os/storage/StorageVolume;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 510
    invoke-static {p1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->isInternalStorage(Landroid/os/storage/StorageVolume;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 513
    :cond_0
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getUuid()Ljava/lang/String;

    move-result-object p1

    .line 514
    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->checkUuidIsUsb(Landroid/os/storage/StorageManager;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private makeCameraDirectory()Z
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mCurrentStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    instance-of v1, v0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    if-eqz v1, :cond_1

    .line 194
    invoke-interface {v0}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->makeCameraDirectory()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string v0, "internal"

    .line 195
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->setCurrentVolume(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    return v1

    .line 200
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mCurrentStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->makeCameraDirectory()Z

    move-result p0

    return p0
.end method

.method private onExternalStorageMounted(Landroid/os/storage/StorageVolume;)V
    .locals 3

    .line 389
    sget-object v0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onExternalStorageMounted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 390
    invoke-static {p1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->isInternalStorage(Landroid/os/storage/StorageVolume;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 393
    :cond_0
    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mExternalStorageVolume:Landroid/os/storage/StorageVolume;

    .line 394
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->doOnHasExternalStorage()V

    return-void
.end method

.method private onExternalStoragePermissionDenied()V
    .locals 2

    const-string v0, "internal"

    const/4 v1, 0x0

    .line 379
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->setCurrentVolume(Ljava/lang/String;I)V

    .line 380
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->saveVolumeToSetting(Ljava/lang/String;)V

    return-void
.end method

.method private onExternalStoragePermissionGranted(Landroid/net/Uri;)V
    .locals 2

    .line 371
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mExternalStorageOperator:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mExternalStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->updateStorageVolume(Landroid/os/storage/StorageVolume;)V

    .line 372
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/documentfile/provider/DocumentFile;->fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p1

    .line 373
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mExternalStorageOperator:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->updateDocumentFolder(Landroidx/documentfile/provider/DocumentFile;)V

    const-string p1, "external"

    const/4 v0, 0x0

    .line 374
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->setCurrentVolume(Ljava/lang/String;I)V

    return-void
.end method

.method private onExternalStorageUnMounted()V
    .locals 2

    const-string v0, "internal"

    const/4 v1, 0x1

    .line 384
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->setCurrentVolume(Ljava/lang/String;I)V

    .line 385
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mStorageSetting:Lcom/transsion/camera/app/common/storage/StorageSetting;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/StorageSetting;->disableExternalStorage()V

    return-void
.end method

.method private registerReceiver()V
    .locals 3

    .line 398
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    .line 399
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_EJECT"

    .line 400
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    .line 401
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_REMOVED"

    .line 402
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    .line 403
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    .line 404
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_CHECKING"

    .line 405
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "file"

    .line 406
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 408
    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private requestExternalStoragePermission()V
    .locals 5

    .line 324
    sget-object v0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestExternalStoragePermission externalStorageVolume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mExternalStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mExternalStorageVolume:Landroid/os/storage/StorageVolume;

    if-nez v0, :cond_0

    return-void

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    .line 331
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mIsPermissionRequesting:Z

    .line 333
    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mContext:Landroid/content/Context;

    sget v3, Lcom/transsion/camera/app/common/R$string;->select_dcim_folder:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 335
    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mExternalStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->createOpenDocumentTreeIntent()Landroid/content/Intent;

    move-result-object v1

    .line 336
    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mIntentProxy:Lcom/transsion/camera/app/common/IApp$IIntentProxy;

    new-instance v3, Lcom/transsion/camera/app/common/storage/AppStorageManager$1;

    const/16 v4, 0x3e8

    invoke-direct {v3, p0, v1, v4, v0}, Lcom/transsion/camera/app/common/storage/AppStorageManager$1;-><init>(Lcom/transsion/camera/app/common/storage/AppStorageManager;Landroid/content/Intent;ILandroid/content/ContentResolver;)V

    invoke-interface {v2, v3}, Lcom/transsion/camera/app/common/IApp$IIntentProxy;->startActivityForResult(Lcom/transsion/camera/app/common/IApp$ActivityResultCallback;)V

    return-void
.end method

.method private saveVolumeToSetting(Ljava/lang/String;)V
    .locals 0

    .line 320
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mStorageSetting:Lcom/transsion/camera/app/common/storage/StorageSetting;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/storage/StorageSetting;->onValueChanged(Ljava/lang/String;)V

    return-void
.end method

.method private setCurrentVolume(Ljava/lang/String;I)V
    .locals 3

    .line 289
    sget-object v0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StorageVolume changed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mCurrentVolume:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 291
    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mCurrentVolume:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 292
    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mCurrentVolume:Ljava/lang/String;

    const-string v1, "external"

    .line 293
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 294
    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mExternalStorageOperator:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iput-object v2, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mCurrentStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    goto :goto_0

    .line 296
    :cond_0
    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mInternalStorageOperator:Lcom/transsion/camera/app/common/storage/InternalStorageOperator;

    iput-object v2, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mCurrentStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    .line 298
    :goto_0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->makeCameraDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 300
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mCurrentVolume:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->saveVolumeToSetting(Ljava/lang/String;)V

    .line 301
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mStorageVolumeListener:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperatorListener;

    if-eqz p1, :cond_2

    .line 302
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mCurrentStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    invoke-interface {p1, v0, p2}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperatorListener;->onOperatorChanged(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V

    goto :goto_1

    .line 305
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeCameraDirectory fail: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 306
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 307
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->onExternalStoragePermissionDenied()V

    .line 308
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->doOnNoExternalStorage()V

    .line 311
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mCurrentStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->clearTempFiles()V

    :cond_3
    return-void
.end method

.method private unregisterReceiver()V
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public getAllBucketIds()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 159
    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mInternalStorageOperator:Lcom/transsion/camera/app/common/storage/InternalStorageOperator;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/InternalStorageOperator;->getBucketId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 161
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->externalPermissionGranted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 164
    sget-object p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "external Permission don\'t Grant"

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0

    .line 167
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mExternalStorageOperator:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->getBucketId()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 169
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method public getInternalStorageOperator()Lcom/transsion/camera/app/common/storage/InternalStorageOperator;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mInternalStorageOperator:Lcom/transsion/camera/app/common/storage/InternalStorageOperator;

    return-object p0
.end method

.method public getStorageOperator()Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mCurrentStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    return-object p0
.end method

.method public getStorageSetting()Lcom/transsion/camera/app/common/setting/ISetting;
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mStorageSetting:Lcom/transsion/camera/app/common/storage/StorageSetting;

    return-object p0
.end method

.method public getStorageSettingKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_storage"

    return-object p0
.end method

.method public init(Lcom/transsion/camera/app/common/storage/DataStore;Lcom/transsion/camera/app/common/setting/ISettingManager;)V
    .locals 2

    .line 84
    sget-object v0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 85
    invoke-interface {p2}, Lcom/transsion/camera/app/common/setting/ISettingManager;->getSettingController()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object p2

    invoke-interface {p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    .line 86
    new-instance p2, Lcom/transsion/camera/app/common/storage/StorageSetting;

    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_storage"

    invoke-direct {p2, v1, p1, v0}, Lcom/transsion/camera/app/common/storage/StorageSetting;-><init>(Ljava/lang/String;Lcom/transsion/camera/app/common/storage/DataStore;Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    iput-object p2, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mStorageSetting:Lcom/transsion/camera/app/common/storage/StorageSetting;

    .line 88
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string p2, "internal"

    .line 89
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "external"

    .line 90
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mStorageSetting:Lcom/transsion/camera/app/common/storage/StorageSetting;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/common/storage/StorageSetting;->init(Ljava/util/List;Ljava/lang/String;)V

    .line 93
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_0

    .line 94
    iget-object p2, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v1, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 97
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mInternalStorageOperator:Lcom/transsion/camera/app/common/storage/InternalStorageOperator;

    iget-object p2, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->init(Landroid/content/Context;)V

    .line 98
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mExternalStorageOperator:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->init(Landroid/content/Context;)V

    return-void
.end method

.method public isExternalStorage()Z
    .locals 1

    .line 151
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->getStorageOperator()Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mExternalStorageOperator:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x0

    .line 128
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mIsResumed:Z

    .line 129
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->unregisterReceiver()V

    return-void
.end method

.method public resume()V
    .locals 1

    const/4 v0, 0x1

    .line 120
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mIsResumed:Z

    .line 121
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mStorageSetting:Lcom/transsion/camera/app/common/storage/StorageSetting;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/StorageSetting;->reload()V

    .line 122
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->checkStorageVolume()V

    .line 123
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->makeCameraDirectory()Z

    .line 124
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->registerReceiver()V

    return-void
.end method

.method public setStorageVolumeListener(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperatorListener;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mStorageVolumeListener:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperatorListener;

    return-void
.end method

.method public unInit()V
    .locals 3

    .line 102
    sget-object v0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unInit mIsPermissionRequesting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mIsPermissionRequesting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_0

    .line 104
    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "key_storage"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 108
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mIsPermissionRequesting:Z

    if-eqz v0, :cond_1

    .line 109
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->onExternalStoragePermissionDenied()V

    const/4 v0, 0x0

    .line 110
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mIsPermissionRequesting:Z

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mInternalStorageOperator:Lcom/transsion/camera/app/common/storage/InternalStorageOperator;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->unInit()V

    .line 113
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mExternalStorageOperator:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->unInit()V

    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mCurrentStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    .line 115
    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mStorageSetting:Lcom/transsion/camera/app/common/storage/StorageSetting;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/StorageSetting;->unInit()V

    .line 116
    iput-object v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mStorageSetting:Lcom/transsion/camera/app/common/storage/StorageSetting;

    return-void
.end method
