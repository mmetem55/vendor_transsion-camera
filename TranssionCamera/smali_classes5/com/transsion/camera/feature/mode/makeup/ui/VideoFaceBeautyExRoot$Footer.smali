.class Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Footer;
.super Lcom/transsion/camera/feature/mode/makeup/adapter/Item;
.source "VideoFaceBeautyExRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Footer"
.end annotation


# instance fields
.field public blackDrawableId:I

.field public drawableId:I

.field final synthetic this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;II)V
    .locals 0

    .line 824
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Footer;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;-><init>()V

    .line 825
    iput p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Footer;->drawableId:I

    .line 826
    iput p3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Footer;->blackDrawableId:I

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 0

    const p0, 0xfa05

    return p0
.end method
