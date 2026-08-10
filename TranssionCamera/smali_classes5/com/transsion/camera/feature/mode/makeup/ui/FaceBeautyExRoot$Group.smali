.class Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Group;
.super Lcom/transsion/camera/feature/mode/makeup/adapter/Item;
.source "FaceBeautyExRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;
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

.field final synthetic this$0:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0

    .line 818
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Group;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;-><init>()V

    .line 819
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Group;->key:Ljava/lang/String;

    .line 820
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Group;->title:Ljava/lang/String;

    .line 821
    iput p4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Group;->drawableId:I

    .line 822
    iput p5, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Group;->expandDrawableId:I

    .line 823
    iput p6, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Group;->blackExpandDrawableId:I

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 0

    const p0, 0xfa01

    return p0
.end method
