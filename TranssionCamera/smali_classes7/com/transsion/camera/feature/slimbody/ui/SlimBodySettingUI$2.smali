.class Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$2;
.super Ljava/lang/Object;
.source "SlimBodySettingUI.java"

# interfaces
.implements Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$SeekBarChangeListener;


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

    .line 178
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$2;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(IZ)V
    .locals 0

    .line 181
    iget-object p2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$2;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;

    invoke-static {p2}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->access$500(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 182
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$2;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->access$500(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->notifyProgressChanged(I)V

    :cond_0
    return-void
.end method
