.class Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Footer;
.super Lcom/transsion/camera/feature/mode/makeup/adapter/Item;
.source "FaceBeautyExRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Footer"
.end annotation


# instance fields
.field public blackDrawableId:I

.field public drawableId:I

.field final synthetic this$0:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;II)V
    .locals 0

    .line 872
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Footer;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;-><init>()V

    .line 873
    iput p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Footer;->drawableId:I

    .line 874
    iput p3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Footer;->blackDrawableId:I

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 0

    const p0, 0xfa05

    return p0
.end method
