.class Lcom/transsion/camera/utils/exif/ExifParser$ImageEvent;
.super Ljava/lang/Object;
.source "ExifParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/utils/exif/ExifParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageEvent"
.end annotation


# instance fields
.field mStripIndex:I

.field mType:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    .line 883
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 884
    iput v0, p0, Lcom/transsion/camera/utils/exif/ExifParser$ImageEvent;->mStripIndex:I

    .line 885
    iput p1, p0, Lcom/transsion/camera/utils/exif/ExifParser$ImageEvent;->mType:I

    return-void
.end method

.method constructor <init>(II)V
    .locals 0

    .line 888
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 889
    iput p1, p0, Lcom/transsion/camera/utils/exif/ExifParser$ImageEvent;->mType:I

    .line 890
    iput p2, p0, Lcom/transsion/camera/utils/exif/ExifParser$ImageEvent;->mStripIndex:I

    return-void
.end method
