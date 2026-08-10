.class Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Group;
.super Lcom/transsion/camera/feature/mode/makeup/adapter/Item;
.source "VideoFaceBeautyExRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Group"
.end annotation


# instance fields
.field public blackExpandDrawableId:I

.field public drawableId:I

.field public expandDrawableId:I

.field public key:Ljava/lang/String;

.field final synthetic this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0

    .line 770
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Group;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;-><init>()V

    .line 771
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Group;->key:Ljava/lang/String;

    .line 772
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Group;->title:Ljava/lang/String;

    .line 773
    iput p4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Group;->drawableId:I

    .line 774
    iput p5, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Group;->expandDrawableId:I

    .line 775
    iput p6, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Group;->blackExpandDrawableId:I

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 0

    const p0, 0xfa01

    return p0
.end method
