.class Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI$3;
.super Ljava/lang/Object;
.source "MakeUpSettingUI.java"

# interfaces
.implements Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI$BarClickListener;


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

    .line 88
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI$3;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public barOnClick(I)V
    .locals 1

    const/4 v0, 0x0

    .line 91
    sput-boolean v0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->isPressBack:Z

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI$3;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;->access$300(Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpSettingUI;I)Z

    return-void
.end method
