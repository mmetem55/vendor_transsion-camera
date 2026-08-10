.class public Lcom/transsion/camera/utils/exif/Exif;
.super Ljava/lang/Object;
.source "Exif.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/utils/exif/Exif;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/utils/exif/Exif;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExif([B)Lcom/transsion/camera/utils/exif/ExifInterface;
    .locals 3

    .line 21
    new-instance v0, Lcom/transsion/camera/utils/exif/ExifInterface;

    invoke-direct {v0}, Lcom/transsion/camera/utils/exif/ExifInterface;-><init>()V

    .line 23
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/transsion/camera/utils/exif/ExifInterface;->readExif([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 25
    sget-object v1, Lcom/transsion/camera/utils/exif/Exif;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "Failed to read EXIF data"

    invoke-static {v1, v2, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method
