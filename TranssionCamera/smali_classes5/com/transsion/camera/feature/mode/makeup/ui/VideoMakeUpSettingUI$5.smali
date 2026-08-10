.class Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI$5;
.super Ljava/lang/Object;
.source "VideoMakeUpSettingUI.java"

# interfaces
.implements Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$ContrastListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI$5;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closeContrast(Z)V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI$5;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->access$300(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;)Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpBottomUI;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 175
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI$5;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->access$300(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;)Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpBottomUI;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpBottomUI;->closeContrast(Z)V

    :cond_0
    return-void
.end method

.method public openContrast()V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI$5;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->access$300(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;)Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpBottomUI;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 168
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI$5;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->access$300(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;)Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpBottomUI;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpBottomUI;->openContrast()V

    :cond_0
    return-void
.end method
