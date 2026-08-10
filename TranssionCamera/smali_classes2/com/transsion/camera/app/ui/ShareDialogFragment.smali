.class public Lcom/transsion/camera/app/ui/ShareDialogFragment;
.super Landroid/app/DialogFragment;
.source "ShareDialogFragment.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/ShareDialogFragment$DismissListener;,
        Lcom/transsion/camera/app/ui/ShareDialogFragment$AppHolder;,
        Lcom/transsion/camera/app/ui/ShareDialogFragment$AppAdapter;,
        Lcom/transsion/camera/app/ui/ShareDialogFragment$AppInfo;
    }
.end annotation


# static fields
.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final IS_DARK_MODE:Z

.field private mAppAdapter:Lcom/transsion/camera/app/ui/ShareDialogFragment$AppAdapter;

.field private mDismissListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/camera/app/ui/ShareDialogFragment$DismissListener;",
            ">;"
        }
    .end annotation
.end field

.field private mImageLoading:Landroid/widget/ProgressBar;

.field private mImageView:Landroid/widget/ImageView;

.field private mItemUri:Landroid/net/Uri;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mVideoView:Landroid/widget/VideoView;


# direct methods
.method public static synthetic $r8$lambda$-JcyBe3zBVG7jlRHZs7NxzveT34(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/camera/app/ui/ShareDialogFragment;->lambda$onCreateDialog$0(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 58
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ShareDialogFragment"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/ShareDialogFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 77
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/ShareDialogFragment;->IS_DARK_MODE:Z

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/camera/app/ui/ShareDialogFragment;)Landroid/widget/VideoView;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ShareDialogFragment;->mVideoView:Landroid/widget/VideoView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/app/ui/ShareDialogFragment;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ShareDialogFragment;->stopLoadingAnim()V

    return-void
.end method

.method private calculateScore(Landroid/app/usage/UsageStats;)F
    .locals 11

    .line 449
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 450
    sget-object p0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xc

    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    if-eqz p1, :cond_2

    .line 457
    invoke-virtual {p1}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    move-result-wide v6

    cmp-long p0, v6, v4

    if-lez p0, :cond_0

    move-wide v4, v6

    .line 461
    :cond_0
    invoke-virtual {p1}, Landroid/app/usage/UsageStats;->getTotalTimeInForeground()J

    move-result-wide p0

    cmp-long v8, p0, v2

    if-lez v8, :cond_1

    move-wide v2, p0

    :cond_1
    const/4 v8, 0x0

    sub-long/2addr v6, v0

    const-wide/16 v9, 0x0

    .line 466
    invoke-static {v6, v7, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    long-to-float v6, v6

    sub-long/2addr v4, v0

    long-to-float v0, v4

    div-float/2addr v6, v0

    mul-float/2addr v6, v6

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v6, v0

    long-to-float p0, p0

    long-to-float p1, v2

    div-float/2addr p0, p1

    int-to-float p1, v8

    const/4 v0, 0x1

    int-to-float v0, v0

    div-float/2addr p1, v0

    add-float/2addr v6, p0

    add-float/2addr v6, p1

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    :goto_0
    return v6
.end method

.method private getBitmapFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 2

    const/4 p0, 0x0

    .line 312
    :try_start_0
    invoke-static {p1, p2}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    .line 318
    :try_start_1
    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz p1, :cond_1

    .line 320
    :try_start_2
    invoke-static {p1}, Lcom/transsion/camera/utils/ExifUtils;->createExifInterface(Ljava/io/InputStream;)Landroid/media/ExifInterface;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 322
    invoke-static {p2}, Lcom/transsion/camera/utils/ExifUtils;->getOrientationFromExif(Landroid/media/ExifInterface;)I

    move-result v1

    :cond_0
    if-eqz v0, :cond_1

    .line 325
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 328
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    return-object p2

    :catchall_0
    move-exception p2

    .line 318
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_5
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p2

    :cond_1
    if-eqz p1, :cond_2

    .line 328
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 329
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_1
    return-object p0

    :catch_1
    move-exception p1

    .line 314
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return-object p0
.end method

.method private getShareApps(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/ShareDialogFragment$AppInfo;",
            ">;"
        }
    .end annotation

    .line 393
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 394
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 396
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v3, "android.intent.category.DEFAULT"

    .line 397
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "image/*"

    .line 398
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 399
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v3, 0x0

    .line 400
    invoke-virtual {p1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 401
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_2

    .line 402
    new-instance v2, Lcom/transsion/camera/app/ui/ShareDialogFragment$AppInfo;

    invoke-direct {v2}, Lcom/transsion/camera/app/ui/ShareDialogFragment$AppInfo;-><init>()V

    .line 403
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 404
    invoke-virtual {v4, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/transsion/camera/app/ui/ShareDialogFragment$AppInfo;->access$002(Lcom/transsion/camera/app/ui/ShareDialogFragment$AppInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 405
    invoke-virtual {v4, v0}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/transsion/camera/app/ui/ShareDialogFragment$AppInfo;->access$102(Lcom/transsion/camera/app/ui/ShareDialogFragment$AppInfo;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 406
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/transsion/camera/app/ui/ShareDialogFragment$AppInfo;->access$502(Lcom/transsion/camera/app/ui/ShareDialogFragment$AppInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 407
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/transsion/camera/app/ui/ShareDialogFragment$AppInfo;->access$602(Lcom/transsion/camera/app/ui/ShareDialogFragment$AppInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 408
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ShareDialogFragment;->isSharingVideo()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v2}, Lcom/transsion/camera/app/ui/ShareDialogFragment$AppInfo;->access$500(Lcom/transsion/camera/app/ui/ShareDialogFragment$AppInfo;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.bips"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v2}, Lcom/transsion/camera/app/ui/ShareDialogFragment$AppInfo;->access$500(Lcom/transsion/camera/app/ui/ShareDialogFragment$AppInfo;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.instagram.android"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 411
    :cond_0
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_1

    iget-boolean v4, v4, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v4, :cond_1

    .line 412
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private initData()V
    .locals 5

    .line 247
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/ShareDialogFragment;->getShareApps(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 248
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/ShareDialogFragment;->setAppScore(Ljava/util/List;)V

    .line 249
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 250
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ShareDialogFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x4

    invoke-direct {v2, v3, v4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 251
    new-instance v1, Lcom/transsion/camera/app/ui/ShareDialogFragment$AppAdapter;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/ShareDialogFragment;->IS_DARK_MODE:Z

    invoke-direct {v1, v2, v3}, Lcom/transsion/camera/app/ui/ShareDialogFragment$AppAdapter;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/ShareDialogFragment;->mAppAdapter:Lcom/transsion/camera/app/ui/ShareDialogFragment$AppAdapter;

    .line 252
    iget-object v2, p0, Lcom/transsion/camera/app/ui/ShareDialogFragment;->mItemUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/ShareDialogFragment$AppAdapter;->setUri(Landroid/net/Uri;)V

    .line 253
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ShareDialogFragment;->mAppAdapter:Lcom/transsion/camera/app/ui/ShareDialogFragment$AppAdapter;

    invoke-static {v1, v0}, Lcom/transsion/camera/app/ui/ShareDialogFragment$AppAdapter;->access$202(Lcom/transsion/camera/app/ui/ShareDialogFragment$AppAdapter;Ljava/util/List;)Ljava/util/List;

    .line 254
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ShareDialogFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/ShareDialogFragment;->mAppAdapter:Lcom/transsion/camera/app/ui/ShareDialogFragment$AppAdapter;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private isSharingVideo()Z
    .locals 1

    .line 479
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ShareDialogFragment;->mItemUri:Landroid/net/Uri;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "video"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$onCreateDialog$0(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    .line 355
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private loadThumbnail(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 2

    .line 297
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 301
    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/ShareDialogFragment;->getBitmapFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    .line 305
    :cond_1
    sget-object p1, Lcom/transsion/camera/app/ui/ShareDialogFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[loadView+] -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const p1, 0x3f19999a    # 0.6f

    .line 306
    invoke-static {p0, p1}, Lcom/transsion/camera/utils/BitmapUtils;->getTargetBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private loadView()V
    .locals 5

    .line 258
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ShareDialogFragment;->isSharingVideo()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ShareDialogFragment;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 260
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ShareDialogFragment;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 262
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ShareDialogFragment;->startLoadingAnim()V

    .line 263
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ShareDialogFragment;->mVideoView:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ShareDialogFragment;->mItemUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 264
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ShareDialogFragment;->mVideoView:Landroid/widget/VideoView;

    new-instance v1, Lcom/transsion/camera/app/ui/ShareDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/ShareDialogFragment$1;-><init>(Lcom/transsion/camera/app/ui/ShareDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 270
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ShareDialogFragment;->mVideoView:Landroid/widget/VideoView;

    new-instance v1, Lcom/transsion/camera/app/ui/ShareDialogFragment$2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/ShareDialogFragment$2;-><init>(Lcom/transsion/camera/app/ui/ShareDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    goto :goto_0

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ShareDialogFragment;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, v2}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 283
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ShareDialogFragment;->mItemUri:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/ShareDialogFragment;->loadThumbnail(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 284
    iget-object v2, p0, Lcom/transsion/camera/app/ui/ShareDialogFragment;->mImageView:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 285
    sget-object v2, Lcom/transsion/camera/app/ui/ShareDialogFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[loadView-] -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 286
    iget-object v2, p0, Lcom/transsion/camera/app/ui/ShareDialogFragment;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 287
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ShareDialogFragment;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 291
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ShareDialogFragment;->mAppAdapter:Lcom/transsion/camera/app/ui/ShareDialogFragment$AppAdapter;

    if-eqz v0, :cond_2

    .line 292
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ShareDialogFragment;->mItemUri:Landroid/net/Uri;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/ShareDialogFragment$AppAdapter;->setUri(Landroid/net/Uri;)V

    :cond_2
    return-void
.end method

.method private setAppScore(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/ShareDialogFragment$AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 420
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "usagestats"

    .line 423
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Landroid/app/usage/UsageStatsManager;

    if-nez v0, :cond_1

    return-void

    .line 428
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 429
    sget-object v3, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x7

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sub-long v3, v1, v3

    .line 430
    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/app/usage/UsageStatsManager;->queryAndAggregateUsageStats(JJ)Ljava/util/Map;

    move-result-object v0

    .line 431
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 432
    sget-object v5, Lcom/transsion/camera/app/ui/ShareDialogFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1

    .line 435
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/app/ui/ShareDialogFragment$AppInfo;

    .line 436
    invoke-static {v3}, Lcom/transsion/camera/app/ui/ShareDialogFragment$AppInfo;->access$500(Lcom/transsion/camera/app/ui/ShareDialogFragment$AppInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/usage/UsageStats;

    .line 437
    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/ShareDialogFragment$AppInfo;->getLauncherName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ShareSheetActivity"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/high16 v4, -0x40800000    # -1.0f

    .line 438
    invoke-static {v3, v4}, Lcom/transsion/camera/app/ui/ShareDialogFragment$AppInfo;->access$702(Lcom/transsion/camera/app/ui/ShareDialogFragment$AppInfo;F)F

    goto :goto_2

    .line 440
    :cond_3
    invoke-direct {p0, v4}, Lcom/transsion/camera/app/ui/ShareDialogFragment;->calculateScore(Landroid/app/usage/UsageStats;)F

    move-result v4

    invoke-static {v3, v4}, Lcom/transsion/camera/app/ui/ShareDialogFragment$AppInfo;->access$702(Lcom/transsion/camera/app/ui/ShareDialogFragment$AppInfo;F)F

    goto :goto_2

    .line 443
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sub-long/2addr p0, v1

    .line 444
    sget-object v0, Lcom/transsion/camera/app/ui/ShareDialogFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cost time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private startLoadingAnim()V
    .locals 2

    .line 335
    sget-object v0, Lcom/transsion/camera/app/ui/ShareDialogFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[startLoadingAnim]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 336
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ShareDialogFragment;->mImageLoading:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method private stopLoadingAnim()V
    .locals 2

    .line 340
    sget-object v0, Lcom/transsion/camera/app/ui/ShareDialogFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[stopLoadingAnim]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 341
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ShareDialogFragment;->mImageLoading:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 238
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 239
    sget-object p1, Lcom/transsion/camera/app/ui/ShareDialogFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onActivityCreated] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ShareDialogFragment;->mItemUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 240
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ShareDialogFragment;->initData()V

    .line 241
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ShareDialogFragment;->mItemUri:Landroid/net/Uri;

    if-eqz p1, :cond_0

    .line 242
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ShareDialogFragment;->loadView()V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .line 347
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/ShareDialogFragment;->IS_DARK_MODE:Z

    if-eqz p1, :cond_0

    .line 348
    new-instance p1, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f1104ef

    invoke-direct {p1, p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 350
    :cond_0
    new-instance p1, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f1104ee

    invoke-direct {p1, p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;I)V

    .line 353
    :goto_0
    new-instance p0, Lcom/transsion/camera/app/ui/ShareDialogFragment$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ShareDialogFragment$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, p0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 220
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/ShareDialogFragment;->IS_DARK_MODE:Z

    const/4 p3, 0x0

    if-eqz p0, :cond_0

    const p0, 0x7f0c009d

    .line 221
    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    const p0, 0x7f0c009c

    .line 223
    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .locals 1

    .line 384
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    .line 385
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ShareDialogFragment;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 386
    invoke-virtual {v0}, Landroid/widget/VideoView;->suspend()V

    const/4 v0, 0x0

    .line 387
    iput-object v0, p0, Lcom/transsion/camera/app/ui/ShareDialogFragment;->mVideoView:Landroid/widget/VideoView;

    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 365
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 366
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ShareDialogFragment;->mDismissListener:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 367
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ShareDialogFragment;->mDismissListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/ShareDialogFragment$DismissListener;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/ShareDialogFragment$DismissListener;->onDismiss()V

    :cond_0
    const/4 p1, 0x0

    .line 369
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ShareDialogFragment;->mItemUri:Landroid/net/Uri;

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 374
    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    .line 375
    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 377
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ShareDialogFragment;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ShareDialogFragment;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {p0}, Landroid/widget/VideoView;->pause()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 229
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0904fc

    .line 230
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/VideoView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/ShareDialogFragment;->mVideoView:Landroid/widget/VideoView;

    const p2, 0x7f090221

    .line 231
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/ShareDialogFragment;->mImageView:Landroid/widget/ImageView;

    const p2, 0x7f090223

    .line 232
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/ShareDialogFragment;->mImageLoading:Landroid/widget/ProgressBar;

    const p2, 0x7f090415

    .line 233
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/ShareDialogFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public setOnDismissListener(Lcom/transsion/camera/app/ui/ShareDialogFragment$DismissListener;)V
    .locals 1

    .line 212
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ShareDialogFragment;->mDismissListener:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public updateUri(Landroid/net/Uri;)V
    .locals 3

    if-nez p1, :cond_0

    .line 204
    sget-object p0, Lcom/transsion/camera/app/ui/ShareDialogFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[updateUri]: uri==null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 207
    :cond_0
    sget-object v0, Lcom/transsion/camera/app/ui/ShareDialogFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateUri]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 208
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ShareDialogFragment;->mItemUri:Landroid/net/Uri;

    return-void
.end method
