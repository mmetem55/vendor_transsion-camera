.class Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;
.super Lcom/transsion/camera/feature/mode/makeup/adapter/Item;
.source "FaceBeautyExRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Child"
.end annotation


# instance fields
.field private final drawableId:I

.field private final featureId:I

.field public group:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Group;

.field private final isSecondary:Z

.field private final key:Ljava/lang/String;

.field final synthetic this$0:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;ILjava/lang/String;ILjava/lang/String;Z)V
    .locals 0

    .line 840
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;-><init>()V

    .line 841
    iput p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;->featureId:I

    .line 842
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;->key:Ljava/lang/String;

    .line 843
    iput p4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;->drawableId:I

    .line 844
    iput-object p5, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;->title:Ljava/lang/String;

    .line 845
    iput-boolean p6, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;->isSecondary:Z

    return-void
.end method

.method static synthetic access$1400(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;)Ljava/lang/String;
    .locals 0

    .line 832
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;->key:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;)I
    .locals 0

    .line 832
    iget p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;->featureId:I

    return p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;)I
    .locals 0

    .line 832
    iget p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;->drawableId:I

    return p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;)Ljava/lang/String;
    .locals 0

    .line 832
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;->title:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getType()I
    .locals 0

    .line 850
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;->isSecondary:Z

    if-eqz p0, :cond_0

    const p0, 0xfa03

    return p0

    :cond_0
    const p0, 0xfa02

    return p0
.end method
