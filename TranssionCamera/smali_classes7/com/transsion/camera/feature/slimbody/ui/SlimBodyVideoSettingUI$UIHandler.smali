.class Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$UIHandler;
.super Landroid/os/Handler;
.source "SlimBodyVideoSettingUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UIHandler"
.end annotation


# instance fields
.field private final mReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;)V
    .locals 1

    .line 80
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 81
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$UIHandler;->mReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 86
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$UIHandler;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;

    if-nez p0, :cond_0

    .line 88
    invoke-static {}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UIHandler handleMessage FunVideoUI is null, return. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 91
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 p1, 0x4

    if-eq v0, p1, :cond_1

    goto :goto_1

    .line 99
    :cond_1
    invoke-static {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->access$300(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 101
    :goto_0
    invoke-static {}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setting_ui_call_back_from_relation isExpanded: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", alpha: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_5

    .line 103
    invoke-static {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->access$400(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;)Z

    goto :goto_1

    .line 96
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->access$200(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;Ljava/lang/String;)V

    goto :goto_1

    .line 93
    :cond_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->access$100(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method
