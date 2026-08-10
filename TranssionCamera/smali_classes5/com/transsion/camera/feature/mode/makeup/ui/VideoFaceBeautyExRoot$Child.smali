.class Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;
.super Lcom/transsion/camera/feature/mode/makeup/adapter/Item;
.source "VideoFaceBeautyExRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Child"
.end annotation


# instance fields
.field private final drawableId:I

.field private final featureId:I

.field public group:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Group;

.field private final isSecondary:Z

.field private final key:Ljava/lang/String;

.field final synthetic this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;ILjava/lang/String;ILjava/lang/String;Z)V
    .locals 0

    .line 792
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;-><init>()V

    .line 793
    iput p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;->featureId:I

    .line 794
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;->key:Ljava/lang/String;

    .line 795
    iput p4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;->drawableId:I

    .line 796
    iput-object p5, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;->title:Ljava/lang/String;

    .line 797
    iput-boolean p6, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;->isSecondary:Z

    return-void
.end method

.method static synthetic access$1500(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;)Ljava/lang/String;
    .locals 0

    .line 784
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;->key:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;)I
    .locals 0

    .line 784
    iget p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;->featureId:I

    return p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;)I
    .locals 0

    .line 784
    iget p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;->drawableId:I

    return p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;)Ljava/lang/String;
    .locals 0

    .line 784
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;->title:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getType()I
    .locals 0

    .line 802
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;->isSecondary:Z

    if-eqz p0, :cond_0

    const p0, 0xfa03

    return p0

    :cond_0
    const p0, 0xfa02

    return p0
.end method
