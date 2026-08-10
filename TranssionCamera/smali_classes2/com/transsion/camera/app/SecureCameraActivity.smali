.class public Lcom/transsion/camera/app/SecureCameraActivity;
.super Lcom/transsion/camera/app/CameraActivity;
.source "SecureCameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/SecureCameraActivity$SecureItem;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static sSecureAlbumId:I


# instance fields
.field private mBrowserGotoGalleryListener:Lcom/transsion/camera/app/common/IBrowserGotoGalleryListener;

.field private mFinished:Z

.field private mPath:Ljava/lang/String;

.field private mReceiverRegistered:Z

.field private final mScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field private final mSecureItemArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/camera/app/SecureCameraActivity$SecureItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$3AP2O3wiSjdgwdlnxhfT88kvdTg(Lcom/transsion/camera/app/SecureCameraActivity;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/SecureCameraActivity;->lambda$notifyNewMedia$1(Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qz-MNcuSCxkQrVN3_E3Fjp0GfRs(Ljava/util/List;Lcom/transsion/camera/app/SecureCameraActivity$SecureItem;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/camera/app/SecureCameraActivity;->lambda$retainLiveItem$0(Ljava/util/List;Lcom/transsion/camera/app/SecureCameraActivity$SecureItem;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 55
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/SecureCameraActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/SecureCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Lcom/transsion/camera/app/CameraActivity;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/SecureCameraActivity;->mSecureItemArray:Ljava/util/ArrayList;

    .line 251
    new-instance v0, Lcom/transsion/camera/app/SecureCameraActivity$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/SecureCameraActivity$1;-><init>(Lcom/transsion/camera/app/SecureCameraActivity;)V

    iput-object v0, p0, Lcom/transsion/camera/app/SecureCameraActivity;->mBrowserGotoGalleryListener:Lcom/transsion/camera/app/common/IBrowserGotoGalleryListener;

    .line 303
    new-instance v0, Lcom/transsion/camera/app/SecureCameraActivity$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/SecureCameraActivity$2;-><init>(Lcom/transsion/camera/app/SecureCameraActivity;)V

    iput-object v0, p0, Lcom/transsion/camera/app/SecureCameraActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 53
    sget-object v0, Lcom/transsion/camera/app/SecureCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/SecureCameraActivity;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lcom/transsion/camera/app/SecureCameraActivity;->mFinished:Z

    return p0
.end method

.method static synthetic access$102(Lcom/transsion/camera/app/SecureCameraActivity;Z)Z
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/transsion/camera/app/SecureCameraActivity;->mFinished:Z

    return p1
.end method

.method private addSecureAlbumItem(Landroid/net/Uri;)V
    .locals 3

    .line 441
    sget-object v0, Lcom/transsion/camera/app/SecureCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addSecureAlbumItem uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 445
    :cond_0
    new-instance v0, Lcom/transsion/camera/app/SecureCameraActivity$SecureItem;

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/transsion/camera/app/SecureCameraActivity$SecureItem;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 446
    iget-object p1, p0, Lcom/transsion/camera/app/SecureCameraActivity;->mSecureItemArray:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 447
    iget-object p0, p0, Lcom/transsion/camera/app/SecureCameraActivity;->mSecureItemArray:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private applyAlbumFromIntent(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "SecureAlbumFromAod"

    .line 265
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 266
    sget-object v0, Lcom/transsion/camera/app/SecureCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyAlbumFromIntent secureItems: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 268
    iget-object p0, p0, Lcom/transsion/camera/app/SecureCameraActivity;->mSecureItemArray:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$notifyNewMedia$1(Landroid/net/Uri;)V
    .locals 0

    .line 437
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/SecureCameraActivity;->addSecureAlbumItem(Landroid/net/Uri;)V

    return-void
.end method

.method private static synthetic lambda$retainLiveItem$0(Ljava/util/List;Lcom/transsion/camera/app/SecureCameraActivity$SecureItem;)Z
    .locals 2

    .line 378
    invoke-virtual {p1}, Lcom/transsion/camera/app/SecureCameraActivity$SecureItem;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private retainLiveItem(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/transsion/camera/app/SecureCameraActivity$SecureItem;",
            ">;)V"
        }
    .end annotation

    .line 330
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 331
    sget-object v1, Lcom/transsion/camera/app/SecureCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[retainLiveItem] albumCount "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 332
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const-string v4, " OR "

    const-string v5, ")"

    if-ge v3, v0, :cond_1

    const-string v6, "_id=("

    if-nez v3, :cond_0

    .line 335
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/app/SecureCameraActivity$SecureItem;

    invoke-virtual {v4}, Lcom/transsion/camera/app/SecureCameraActivity$SecureItem;->getId()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 337
    :cond_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/app/SecureCameraActivity$SecureItem;

    invoke-virtual {v4}, Lcom/transsion/camera/app/SecureCameraActivity$SecureItem;->getId()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 340
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 342
    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppStorageManager:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->getAllBucketIds()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 343
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 344
    new-instance v3, Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") AND ("

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v0, v2

    .line 345
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_3

    const/16 v6, 0x3d

    const-string v7, "bucket_id"

    if-nez v0, :cond_2

    .line 347
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 349
    :cond_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 352
    :cond_3
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    move-object v6, v0

    const-string v0, "_id"

    .line 356
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    .line 360
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v8, "_id DESC"

    const-string v1, "external"

    .line 363
    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 364
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_6

    .line 365
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_6

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 367
    :cond_5
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 368
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_5

    goto :goto_5

    :catchall_0
    move-exception v1

    .line 364
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p0

    :try_start_3
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v1

    :cond_6
    :goto_5
    if-eqz p0, :cond_7

    .line 371
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_6

    :catch_0
    move-exception p0

    .line 372
    sget-object v1, Lcom/transsion/camera/app/SecureCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "[retainLiveItem] exception: "

    invoke-static {v1, v2, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 374
    :cond_7
    :goto_6
    sget-object p0, Lcom/transsion/camera/app/SecureCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[retainLiveItem] live ids: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 375
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_8

    .line 376
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    goto :goto_7

    .line 378
    :cond_8
    new-instance v1, Lcom/transsion/camera/app/SecureCameraActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/transsion/camera/app/SecureCameraActivity$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 380
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[retainLiveItem] done. albumCount "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final attachAlbumToIntent(Landroid/content/Intent;)V
    .locals 4

    .line 244
    iget-object v0, p0, Lcom/transsion/camera/app/SecureCameraActivity;->mSecureItemArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 245
    sget-object v1, Lcom/transsion/camera/app/SecureCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attachAlbumToIntent mSecureItemArray: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-lez v0, :cond_0

    .line 247
    iget-object p0, p0, Lcom/transsion/camera/app/SecureCameraActivity;->mSecureItemArray:Ljava/util/ArrayList;

    const-string v0, "SecureAlbumFromAod"

    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method protected buildGotoGalleryIntent(Landroid/net/Uri;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 4

    .line 274
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/BaseCameraActivity;->buildGotoGalleryIntent(Landroid/net/Uri;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    .line 275
    iget-object p2, p0, Lcom/transsion/camera/app/SecureCameraActivity;->mSecureItemArray:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 276
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 277
    new-array v0, p2, [J

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    .line 279
    iget-object v2, p0, Lcom/transsion/camera/app/SecureCameraActivity;->mSecureItemArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/SecureCameraActivity$SecureItem;

    .line 280
    invoke-virtual {v2}, Lcom/transsion/camera/app/SecureCameraActivity$SecureItem;->getAlbum()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 281
    invoke-virtual {v2}, Lcom/transsion/camera/app/SecureCameraActivity$SecureItem;->getAlbum()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    :cond_0
    invoke-virtual {v2}, Lcom/transsion/camera/app/SecureCameraActivity$SecureItem;->getId()J

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p2, "isCamera"

    .line 286
    invoke-virtual {p1, p2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p0}, Lcom/transsion/camera/app/SecureCameraActivity;->isSecureCamera()Z

    move-result p2

    const-string v1, "isSecureCamera"

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "secureAlbum"

    .line 288
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 289
    iget-object p2, p0, Lcom/transsion/camera/app/SecureCameraActivity;->mPath:Ljava/lang/String;

    const-string p3, "securePath"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    iget p2, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mChoseGallery:I

    const/4 p3, 0x1

    if-eq p2, p3, :cond_2

    const/4 v1, 0x2

    if-ne p2, v1, :cond_3

    :cond_2
    const-string p2, "com.google.android.apps.photos.api.secure_mode_ids"

    .line 291
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    const-string p2, "com.google.android.apps.photos.api.secure_mode"

    .line 292
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_3
    const p2, 0x888000

    .line 294
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 296
    invoke-virtual {p0}, Landroid/app/Activity;->isVoiceInteractionRoot()Z

    move-result p0

    if-eqz p0, :cond_4

    const/high16 p0, 0x10000000

    .line 297
    invoke-virtual {p1, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_4
    return-object p1
.end method

.method protected canShowPermissionsDialog()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isPowerScreenOn(Landroid/content/Context;)Z
    .locals 0

    const-string p0, "power"

    .line 466
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    .line 467
    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p0

    return p0
.end method

.method protected isSecureCamera()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected loadLatestThumbnail()V
    .locals 0

    return-void
.end method

.method public notifyNewMedia(Landroid/net/Uri;ZZ)V
    .locals 0

    .line 436
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/BaseCameraActivity;->notifyNewMedia(Landroid/net/Uri;ZZ)V

    .line 437
    new-instance p2, Lcom/transsion/camera/app/SecureCameraActivity$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p1}, Lcom/transsion/camera/app/SecureCameraActivity$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/SecureCameraActivity;Landroid/net/Uri;)V

    invoke-virtual {p0, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final onCreateTasks(Landroid/os/Bundle;)V
    .locals 0

    .line 154
    invoke-virtual {p0}, Lcom/transsion/camera/app/SecureCameraActivity;->preCreateTasks()V

    .line 155
    invoke-super {p0, p1}, Lcom/transsion/camera/app/CameraActivity;->onCreateTasks(Landroid/os/Bundle;)V

    .line 156
    invoke-virtual {p0}, Lcom/transsion/camera/app/SecureCameraActivity;->postCreateTasks()V

    return-void
.end method

.method protected onDestroyTasks()V
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/transsion/camera/app/SecureCameraActivity;->mSecureItemArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 239
    invoke-virtual {p0}, Lcom/transsion/camera/app/SecureCameraActivity;->unRegisterScreenOff()V

    .line 240
    invoke-super {p0}, Lcom/transsion/camera/app/CameraActivity;->onDestroyTasks()V

    return-void
.end method

.method protected onResumeTasks()V
    .locals 0

    .line 192
    invoke-virtual {p0}, Lcom/transsion/camera/app/SecureCameraActivity;->preResumeTasks()V

    .line 193
    invoke-super {p0}, Lcom/transsion/camera/app/CameraActivity;->onResumeTasks()V

    return-void
.end method

.method protected onStopTasks()V
    .locals 2

    .line 228
    invoke-super {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->onStopTasks()V

    .line 229
    iget-boolean v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mGoingToGallery:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mChoseGallery:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/SecureCameraActivity;->mSecureItemArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 231
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/BaseCameraActivity;->updateThumbnailUri(Landroid/net/Uri;Z)V

    .line 232
    invoke-static {v1}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->setProcessStatus(Z)V

    :cond_1
    return-void
.end method

.method protected onThumbnailUpdate(Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 222
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/CameraActivity;->onThumbnailUpdate(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    .line 223
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/SecureCameraActivity;->addSecureAlbumItem(Landroid/net/Uri;)V

    return-void
.end method

.method protected postCreateTasks()V
    .locals 5

    .line 170
    invoke-virtual {p0}, Lcom/transsion/camera/app/SecureCameraActivity;->registerScreenOff()V

    .line 171
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 173
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/CameraActivity;->launchFromAod(Landroid/content/Intent;)Z

    move-result v1

    const-string v2, "com.android.systemui.camera_launch_source"

    .line 175
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "volume_double_tap"

    .line 174
    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x3

    const/4 v4, -0x1

    .line 176
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    .line 178
    :goto_1
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "lockscreen_affordance"

    .line 177
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v3, :cond_2

    .line 179
    invoke-virtual {p0, p0}, Lcom/transsion/camera/app/SecureCameraActivity;->isPowerScreenOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 180
    sget-object v2, Lcom/transsion/camera/app/SecureCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v4, "isPowerScreenOn false"

    invoke-static {v2, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 183
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/camera/app/QuickActivity;->isKeyguardLocked()Z

    move-result v2

    if-nez v2, :cond_4

    if-nez v3, :cond_3

    if-nez v0, :cond_3

    if-eqz v1, :cond_4

    .line 184
    :cond_3
    sget-object v0, Lcom/transsion/camera/app/SecureCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "isLockScreenOn false"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 187
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object p0, p0, Lcom/transsion/camera/app/SecureCameraActivity;->mBrowserGotoGalleryListener:Lcom/transsion/camera/app/common/IBrowserGotoGalleryListener;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->setBrowserGotoGalleryListener(Lcom/transsion/camera/app/common/IBrowserGotoGalleryListener;)V

    return-void
.end method

.method protected preCreateTasks()V
    .locals 2

    .line 160
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 161
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/CameraActivity;->launchFromAod(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/SecureCameraActivity;->applyAlbumFromIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 164
    :cond_0
    sget v0, Lcom/transsion/camera/app/SecureCameraActivity;->sSecureAlbumId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/transsion/camera/app/SecureCameraActivity;->sSecureAlbumId:I

    .line 166
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/secure/all/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/transsion/camera/app/SecureCameraActivity;->sSecureAlbumId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/SecureCameraActivity;->mPath:Ljava/lang/String;

    return-void
.end method

.method protected preResumeTasks()V
    .locals 4

    .line 197
    iget-object v0, p0, Lcom/transsion/camera/app/SecureCameraActivity;->mSecureItemArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->updateThumbnail(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/SecureCameraActivity;->mSecureItemArray:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/SecureCameraActivity;->retainLiveItem(Ljava/util/ArrayList;)V

    .line 201
    iget-object v0, p0, Lcom/transsion/camera/app/SecureCameraActivity;->mSecureItemArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->updateThumbnail(Landroid/graphics/Bitmap;)V

    .line 203
    invoke-virtual {p0, v1, v2}, Lcom/transsion/camera/app/BaseCameraActivity;->updateThumbnailUri(Landroid/net/Uri;Z)V

    .line 204
    invoke-static {v2}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->setProcessStatus(Z)V

    goto :goto_0

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/SecureCameraActivity;->mSecureItemArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/SecureCameraActivity$SecureItem;

    .line 207
    invoke-virtual {v0}, Lcom/transsion/camera/app/SecureCameraActivity$SecureItem;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 209
    iget-object v1, p0, Lcom/transsion/camera/app/CameraActivity;->mThumbnailFromAod:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    .line 210
    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object v3, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppStorageManager:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->getAllBucketIds()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->loadThumbnailByUri(Ljava/util/ArrayList;Landroid/net/Uri;)V

    .line 212
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/camera/app/CameraActivity;->updateThumbnailFromAod()V

    .line 213
    invoke-virtual {p0, v0, v2}, Lcom/transsion/camera/app/BaseCameraActivity;->updateThumbnailUri(Landroid/net/Uri;Z)V

    .line 214
    invoke-static {v2}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->setProcessStatus(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected registerBackgroundImagesObserver()V
    .locals 0

    return-void
.end method

.method protected registerScreenOff()V
    .locals 3

    .line 387
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_PRESENT"

    .line 391
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.CUSTOM_SCREEN_OFF"

    .line 392
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 394
    iget-object v1, p0, Lcom/transsion/camera/app/SecureCameraActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v0, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 398
    iput-boolean v0, p0, Lcom/transsion/camera/app/SecureCameraActivity;->mReceiverRegistered:Z

    return-void
.end method

.method protected showWaitPage()V
    .locals 3

    .line 425
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/transsion/camera/app/SleepCameraActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "isSecureCamera"

    const/4 v2, 0x1

    .line 426
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 428
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 430
    sget-object v0, Lcom/transsion/camera/app/SecureCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SleepCameraActivity not found"

    invoke-static {v0, v1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method protected unRegisterBackgroundImagesObserver()V
    .locals 0

    return-void
.end method

.method protected unRegisterScreenOff()V
    .locals 1

    .line 402
    iget-boolean v0, p0, Lcom/transsion/camera/app/SecureCameraActivity;->mReceiverRegistered:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 403
    iput-boolean v0, p0, Lcom/transsion/camera/app/SecureCameraActivity;->mReceiverRegistered:Z

    .line 404
    iget-object v0, p0, Lcom/transsion/camera/app/SecureCameraActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method
