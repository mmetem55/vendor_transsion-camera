.class Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI$3;
.super Ljava/lang/Object;
.source "BeautySettingUI.java"

# interfaces
.implements Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$BarClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI$3;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public barOnClick(I)V
    .locals 2

    const-wide/16 v0, 0xc8

    .line 95
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->isFastDoubleClick(J)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 98
    sput-boolean v0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->isPressBack:Z

    .line 99
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI$3;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;->access$300(Lcom/transsion/camera/feature/mode/makeup/ui/BeautySettingUI;I)Z

    return-void
.end method
