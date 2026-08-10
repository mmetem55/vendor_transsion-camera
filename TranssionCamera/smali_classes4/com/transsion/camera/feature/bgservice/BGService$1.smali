.class Lcom/transsion/camera/feature/bgservice/BGService$1;
.super Ljava/lang/Object;
.source "BGService.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/bgservice/BGService;->linkToDeath(Lcom/transsion/camera/feature/bgservice/BGService$HwBinderDeathRecipient;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/bgservice/BGService;

.field final synthetic val$arg0:Lcom/transsion/camera/feature/bgservice/BGService$HwBinderDeathRecipient;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/bgservice/BGService;Lcom/transsion/camera/feature/bgservice/BGService$HwBinderDeathRecipient;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/transsion/camera/feature/bgservice/BGService$1;->this$0:Lcom/transsion/camera/feature/bgservice/BGService;

    iput-object p2, p0, Lcom/transsion/camera/feature/bgservice/BGService$1;->val$arg0:Lcom/transsion/camera/feature/bgservice/BGService$HwBinderDeathRecipient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serviceDied(J)V
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/transsion/camera/feature/bgservice/BGService$1;->val$arg0:Lcom/transsion/camera/feature/bgservice/BGService$HwBinderDeathRecipient;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/feature/bgservice/BGService$HwBinderDeathRecipient;->serviceDied(J)V

    return-void
.end method
