.class Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$4;
.super Ljava/lang/Object;
.source "SlimBodySettingUI.java"

# interfaces
.implements Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$BarClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$4;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public barOnClick(I)V
    .locals 2

    .line 197
    sget v0, Lcom/transsion/camera/feature/slimbody/R$id;->slimbody_bar:I

    if-ne p1, v0, :cond_1

    const-wide/16 v0, 0xfa

    .line 198
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->isFastDoubleClick(J)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 199
    invoke-static {}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "[BarClickListener], fast click, return !"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 202
    :cond_0
    invoke-static {}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "[BarClickListener], click SB"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 203
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$4;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->access$700(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)Z

    :cond_1
    return-void
.end method
