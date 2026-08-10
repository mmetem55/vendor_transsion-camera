.class Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI$4;
.super Ljava/lang/Object;
.source "VideoMakeUpSettingUI.java"

# interfaces
.implements Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$SeekBarChangeListener;


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

    .line 154
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI$4;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(IZ)V
    .locals 0

    .line 157
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI$4;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->access$300(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;)Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpBottomUI;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 158
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI$4;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;->access$300(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpSettingUI;)Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpBottomUI;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpBottomUI;->progressChanged(I)V

    :cond_0
    return-void
.end method
