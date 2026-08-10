.class Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Reset;
.super Lcom/transsion/camera/feature/mode/makeup/adapter/Item;
.source "FaceBeautyExRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Reset"
.end annotation


# instance fields
.field public drawableId:I

.field final synthetic this$0:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;

.field public title:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;)V
    .locals 0

    .line 858
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Reset;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$1;)V
    .locals 0

    .line 858
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Reset;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;)V

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 0

    const p0, 0xfa04

    return p0
.end method
