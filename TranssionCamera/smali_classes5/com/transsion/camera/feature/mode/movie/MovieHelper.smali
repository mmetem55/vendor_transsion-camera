.class public Lcom/transsion/camera/feature/mode/movie/MovieHelper;
.super Lcom/transsion/camera/app/common/mode/CommonVideoHelper;
.source "MovieHelper.java"


# static fields
.field private static final MOVIE_NOTIFICATION_ID:I = 0x64

.field private static final NOTIFICATION_ID:Ljava/lang/String; = "notification_id"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/movie/MovieHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/movie/MovieHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;-><init>()V

    return-void
.end method

.method private static buildResultIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 5

    .line 122
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.APP_GALLERY"

    .line 123
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 124
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 125
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 126
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 129
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v3, "use_google_photos_default"

    const-string v4, "bool"

    .line 128
    invoke-virtual {v2, v3, v4, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 127
    invoke-virtual {v2, p0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    .line 130
    invoke-static {v1, p0}, Lcom/transsion/camera/utils/CameraUtil;->getChoseGallery(Landroid/content/pm/PackageManager;Z)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    const-string p0, "com.google.android.apps.photos"

    .line 132
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    const-string p0, "com.google.android.apps.photosgo"

    .line 134
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const-string p0, "com.gallery20"

    .line 136
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    return-object v0
.end method

.method private static createNotificationChannel(Landroid/app/NotificationManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ObsoleteSdkInt"
        }
    .end annotation

    .line 146
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/MovieHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "createNotificationChannel"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 147
    new-instance v0, Landroid/app/NotificationChannel;

    const/4 v1, 0x3

    invoke-direct {v0, p1, p2, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 p1, 0x0

    .line 149
    invoke-virtual {v0, p1}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 150
    invoke-virtual {v0, p1}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 152
    invoke-virtual {v0, p1}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 153
    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method static saveMovieNotification(Landroid/content/Context;)V
    .locals 4

    .line 93
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/MovieHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "saveMovieNotification"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v0, "notification"

    .line 95
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 97
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 98
    sget v2, Lcom/transsion/camera/feature/movie/R$string;->movie_mode_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "notification_id"

    .line 100
    invoke-static {v0, v3, v2}, Lcom/transsion/camera/feature/mode/movie/MovieHelper;->createNotificationChannel(Landroid/app/NotificationManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    new-instance v2, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v2, p0, v3}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget v3, Lcom/transsion/camera/feature/movie/R$drawable;->btn_movie_notification_saved:I

    .line 104
    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/movie/R$string;->camera_label:I

    .line 105
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/movie/R$string;->camera_movie_saved_notification:I

    .line 106
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 108
    invoke-static {p0}, Landroidx/core/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroidx/core/app/TaskStackBuilder;

    move-result-object v2

    .line 109
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/MovieHelper;->buildResultIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroidx/core/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroidx/core/app/TaskStackBuilder;

    const/4 p0, 0x0

    const/high16 v3, 0xc000000

    .line 112
    invoke-virtual {v2, p0, v3}, Landroidx/core/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object p0

    .line 116
    invoke-virtual {v1, p0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    const/4 p0, 0x1

    .line 117
    invoke-virtual {v1, p0}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    const/16 p0, 0x64

    .line 118
    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method static shareMovie(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 3

    if-nez p1, :cond_0

    .line 159
    sget-object p0, Lcom/transsion/camera/feature/mode/movie/MovieHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "shareMovie uri is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 164
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 165
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.STREAM"

    .line 167
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const p1, 0x10008000

    .line 168
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 172
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 174
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public createContentValues(Lcom/transsion/camera/feature/mode/movie/MovieInfo;JLandroid/location/Location;)Landroid/content/ContentValues;
    .locals 9

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 59
    new-instance p0, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "\'VID\'_yyyyMMdd_HHmmss"

    invoke-direct {p0, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/movie/MovieInfo;->getFileExt()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 61
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/movie/MovieInfo;->getFolder()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 62
    invoke-virtual {p1, v3}, Lcom/transsion/camera/feature/mode/movie/MovieInfo;->setMoviePath(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/movie/MovieInfo;->getTempPath()Ljava/lang/String;

    move-result-object v4

    .line 64
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 66
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "title"

    .line 67
    invoke-virtual {v6, v7, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "_display_name"

    .line 68
    invoke-virtual {v6, p0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v7, 0x3e8

    .line 69
    div-long v7, v0, v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string v2, "date_modified"

    invoke-virtual {v6, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 70
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/movie/MovieInfo;->getMimeType()Ljava/lang/String;

    move-result-object p0

    const-string v2, "mime_type"

    invoke-virtual {v6, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "_data"

    .line 71
    invoke-virtual {v6, p0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/movie/MovieInfo;->getWidth()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v2, "width"

    invoke-virtual {v6, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 73
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/movie/MovieInfo;->getHeight()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v2, "height"

    invoke-virtual {v6, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 74
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/movie/MovieInfo;->getWidth()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/movie/MovieInfo;->getHeight()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "resolution"

    .line 74
    invoke-virtual {v6, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "datetaken"

    invoke-virtual {v6, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-wide/16 p0, -0x1

    cmp-long p0, p2, p0

    if-eqz p0, :cond_0

    .line 79
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "duration"

    invoke-virtual {v6, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 82
    :cond_0
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "_size"

    invoke-virtual {v6, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz p4, :cond_1

    .line 85
    invoke-virtual {p4}, Landroid/location/Location;->getLatitude()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const-string p1, "latitude"

    .line 84
    invoke-virtual {v6, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 87
    invoke-virtual {p4}, Landroid/location/Location;->getLongitude()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const-string p1, "longitude"

    .line 86
    invoke-virtual {v6, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    :cond_1
    return-object v6
.end method
