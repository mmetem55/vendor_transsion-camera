.class Lcom/transsion/camera/utils/exif/ExifParser$ExifTagEvent;
.super Ljava/lang/Object;
.source "ExifParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/utils/exif/ExifParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExifTagEvent"
.end annotation


# instance fields
.field mIsRequested:Z

.field mTag:Lcom/transsion/camera/utils/exif/ExifTag;


# direct methods
.method constructor <init>(Lcom/transsion/camera/utils/exif/ExifTag;Z)V
    .locals 0

    .line 914
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 915
    iput-object p1, p0, Lcom/transsion/camera/utils/exif/ExifParser$ExifTagEvent;->mTag:Lcom/transsion/camera/utils/exif/ExifTag;

    .line 916
    iput-boolean p2, p0, Lcom/transsion/camera/utils/exif/ExifParser$ExifTagEvent;->mIsRequested:Z

    return-void
.end method
