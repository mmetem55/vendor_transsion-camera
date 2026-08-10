.class Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI$5;
.super Ljava/lang/Object;
.source "MakeUpSettingUI.java"

# interfaces
.implements Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$ContrastListener;


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

    .line 105
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI$5;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closeContrast(Z)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI$5;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->access$000(Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;)Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI$5;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->access$000(Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;)Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;->closeContrast(Z)V

    :cond_0
    return-void
.end method

.method public openContrast()V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI$5;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->access$000(Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;)Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI$5;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->access$000(Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;)Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpBottomUI;->openContrast()V

    :cond_0
    return-void
.end method
