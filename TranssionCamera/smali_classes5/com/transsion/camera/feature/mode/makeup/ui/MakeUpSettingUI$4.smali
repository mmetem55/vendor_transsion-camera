.class Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI$4;
.super Ljava/lang/Object;
.source "MakeUpSettingUI.java"

# interfaces
.implements Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$SeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI$4;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(IZ)V
    .locals 0

    .line 99
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI$4;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->access$000(Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;)Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 100
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI$4;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->access$000(Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;)Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;->progressChanged(I)V

    :cond_0
    return-void
.end method
