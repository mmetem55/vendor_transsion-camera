.class Lcom/transsion/camera/feature/bgservice/BGService$2;
.super Lvendor/mediatek/hardware/camera/bgservice/V1_0/IEventCallback$Stub;
.source "BGService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/bgservice/BGService;->setEventCallback(ILcom/transsion/camera/feature/bgservice/BGService$IEventCallbackStub;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/bgservice/BGService;

.field final synthetic val$arg1:Lcom/transsion/camera/feature/bgservice/BGService$IEventCallbackStub;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/bgservice/BGService;Lcom/transsion/camera/feature/bgservice/BGService$IEventCallbackStub;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/transsion/camera/feature/bgservice/BGService$2;->this$0:Lcom/transsion/camera/feature/bgservice/BGService;

    iput-object p2, p0, Lcom/transsion/camera/feature/bgservice/BGService$2;->val$arg1:Lcom/transsion/camera/feature/bgservice/BGService$IEventCallbackStub;

    invoke-direct {p0}, Lvendor/mediatek/hardware/camera/bgservice/V1_0/IEventCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(III)Z
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/transsion/camera/feature/bgservice/BGService$2;->val$arg1:Lcom/transsion/camera/feature/bgservice/BGService$IEventCallbackStub;

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/camera/feature/bgservice/BGService$IEventCallbackStub;->onCompleted(III)Z

    move-result p0

    return p0
.end method
