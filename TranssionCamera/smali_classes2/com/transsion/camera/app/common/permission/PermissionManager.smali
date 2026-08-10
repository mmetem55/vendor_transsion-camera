.class public Lcom/transsion/camera/app/common/permission/PermissionManager;
.super Ljava/lang/Object;
.source "PermissionManager.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mARDrawlinePermissionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivity:Landroid/app/Activity;

.field private mAllPermissionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDenyARDrawlinePermissionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDenyLocationPermissionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDenyPermissionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLaunchPermissionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationPermissionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTargetSdkVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/common/permission/PermissionManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/permission/PermissionManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->mAllPermissionList:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->mLaunchPermissionList:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->mLocationPermissionList:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->mARDrawlinePermissionList:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->mDenyPermissionList:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->mDenyLocationPermissionList:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->mDenyARDrawlinePermissionList:Ljava/util/List;

    .line 51
    iput-object p1, p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->mActivity:Landroid/app/Activity;

    .line 52
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput p1, p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->mTargetSdkVersion:I

    .line 53
    sget-object v0, Lcom/transsion/camera/app/common/permission/PermissionManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PermissionManager mTargetSdkVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 54
    invoke-direct {p0}, Lcom/transsion/camera/app/common/permission/PermissionManager;->initCameraAllPermissionList()V

    .line 55
    invoke-direct {p0}, Lcom/transsion/camera/app/common/permission/PermissionManager;->initCameraLaunchPermissionList()V

    .line 56
    invoke-direct {p0}, Lcom/transsion/camera/app/common/permission/PermissionManager;->initCameraLocationPermissionList()V

    return-void
.end method

.method private checkExternalStorageManager(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 335
    invoke-direct {p0}, Lcom/transsion/camera/app/common/permission/PermissionManager;->externalStorageManagerPermissionGranted()Z

    move-result p0

    const-string v0, "android.permission.MANAGE_EXTERNAL_STORAGE"

    if-eqz p0, :cond_0

    .line 336
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 337
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 338
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private externalStorageManagerPermissionGranted()Z
    .locals 1

    .line 243
    iget p0, p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->mTargetSdkVersion:I

    const/16 v0, 0x1e

    if-lt p0, v0, :cond_0

    .line 245
    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private getNeedCheckPermissionList(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 309
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-object p1

    .line 312
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 313
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 314
    iget-object v2, p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 315
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 318
    :cond_2
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/permission/PermissionManager;->checkExternalStorageManager(Ljava/util/List;)V

    .line 319
    sget-object p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNeedCheckPermissionList(): "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0
.end method

.method private initCameraAllPermissionList()V
    .locals 2

    .line 274
    iget-object v0, p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->mAllPermissionList:Ljava/util/List;

    const-string v1, "android.permission.CAMERA"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    iget-object v0, p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->mAllPermissionList:Ljava/util/List;

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    iget-object v0, p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->mAllPermissionList:Ljava/util/List;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    iget-object v0, p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->mAllPermissionList:Ljava/util/List;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    iget-object p0, p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->mAllPermissionList:Ljava/util/List;

    const-string v0, "android.permission.MANAGE_EXTERNAL_STORAGE"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private initCameraLaunchPermissionList()V
    .locals 2

    .line 286
    iget-object v0, p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->mLaunchPermissionList:Ljava/util/List;

    const-string v1, "android.permission.CAMERA"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    iget-object v0, p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->mLaunchPermissionList:Ljava/util/List;

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    iget-object p0, p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->mLaunchPermissionList:Ljava/util/List;

    const-string v0, "android.permission.MANAGE_EXTERNAL_STORAGE"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private initCameraLocationPermissionList()V
    .locals 2

    .line 296
    iget-object v0, p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->mLocationPermissionList:Ljava/util/List;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    iget-object p0, p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->mLocationPermissionList:Ljava/util/List;

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public checkCameraLaunchPermissions()Z
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->mLaunchPermissionList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/permission/PermissionManager;->getNeedCheckPermissionList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 84
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 85
    sget-object v0, Lcom/transsion/camera/app/common/permission/PermissionManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkCameraLaunchPermissions(), need check: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public checkCameraLocationPermissions()Z
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->mLocationPermissionList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/permission/PermissionManager;->getNeedCheckPermissionList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 98
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 99
    sget-object v0, Lcom/transsion/camera/app/common/permission/PermissionManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkCameraLocationPermissions(), need check: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public getCameraLaunchPermissionRequestCode()I
    .locals 0

    const/16 p0, 0x64

    return p0
.end method

.method public getCameraLocationPermissionRequestCode()I
    .locals 0

    const/16 p0, 0x65

    return p0
.end method

.method public getDenyARDrawlinePermissions()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 353
    iget-object v0, p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->mDenyARDrawlinePermissionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 354
    iget-object v0, p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->mARDrawlinePermissionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 355
    iget-object v2, p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 356
    iget-object v2, p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->mDenyARDrawlinePermissionList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 359
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->mDenyARDrawlinePermissionList:Ljava/util/List;

    return-object p0
.end method

.method public getDenyLocationPermissions()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 343
    iget-object v0, p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->mDenyLocationPermissionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 344
    iget-object v0, p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->mLocationPermissionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 345
    iget-object v2, p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 346
    iget-object v2, p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->mDenyLocationPermissionList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 349
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->mDenyLocationPermissionList:Ljava/util/List;

    return-object p0
.end method

.method public getDenyPermissions()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 324
    iget-object v0, p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->mDenyPermissionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 325
    iget-object v0, p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->mLaunchPermissionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 326
    iget-object v2, p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 327
    iget-object v2, p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->mDenyPermissionList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->mDenyPermissionList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/permission/PermissionManager;->checkExternalStorageManager(Ljava/util/List;)V

    .line 331
    iget-object p0, p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->mDenyPermissionList:Ljava/util/List;

    return-object p0
.end method

.method public initARDrawlinePermissionList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->mARDrawlinePermissionList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public isCameraLaunchPermissionsResultReady([Ljava/lang/String;[I)Z
    .locals 9

    .line 222
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 223
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android.permission.CAMERA"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "android.permission.RECORD_AUDIO"

    .line 224
    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 225
    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "android.permission.READ_EXTERNAL_STORAGE"

    .line 226
    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v2, v1

    .line 227
    :goto_0
    array-length v7, p1

    if-ge v2, v7, :cond_0

    .line 228
    aget-object v7, p1, v2

    aget v8, p2, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 230
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/permission/PermissionManager;->externalStorageManagerPermissionGranted()Z

    move-result p0

    .line 231
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_1

    .line 233
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_1

    .line 235
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_1

    .line 237
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_1

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public requestARDrawlinePermissions()Z
    .locals 3

    .line 181
    iget-object v0, p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->mARDrawlinePermissionList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/permission/PermissionManager;->getNeedCheckPermissionList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 182
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 184
    sget-object v1, Lcom/transsion/camera/app/common/permission/PermissionManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "requestARDrawlinePermissions(), user check"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 185
    iget-object p0, p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->mActivity:Landroid/app/Activity;

    .line 186
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/16 v1, 0x66

    .line 185
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    const/4 p0, 0x0

    return p0

    .line 190
    :cond_0
    sget-object p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "requestARDrawlinePermissions(), all on"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public requestCameraLaunchPermissions()Z
    .locals 4

    .line 140
    iget-object v0, p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->mLaunchPermissionList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/permission/PermissionManager;->getNeedCheckPermissionList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 141
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 144
    :try_start_0
    sget-object v2, Lcom/transsion/camera/app/common/permission/PermissionManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "requestCameraLaunchPermissions(), user check"

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 145
    iget-object p0, p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->mActivity:Landroid/app/Activity;

    .line 146
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/16 v2, 0x64

    .line 145
    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p0

    .line 150
    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    return v1

    .line 154
    :cond_0
    sget-object p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "requestCameraLaunchPermissions(), all on"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public requestCameraLocationPermissions()Z
    .locals 3

    .line 167
    iget-object v0, p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->mLocationPermissionList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/permission/PermissionManager;->getNeedCheckPermissionList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 168
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 170
    sget-object v1, Lcom/transsion/camera/app/common/permission/PermissionManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "requestCameraLocationPermissions(), user check"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 171
    iget-object p0, p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->mActivity:Landroid/app/Activity;

    .line 172
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/16 v1, 0x65

    .line 171
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    const/4 p0, 0x0

    return p0

    .line 176
    :cond_0
    sget-object p0, Lcom/transsion/camera/app/common/permission/PermissionManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "requestCameraLocationPermissions(), all on"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method
