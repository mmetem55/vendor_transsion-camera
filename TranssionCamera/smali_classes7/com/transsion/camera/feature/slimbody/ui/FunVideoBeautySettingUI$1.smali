.class Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI$1;
.super Ljava/lang/Object;
.source "FunVideoBeautySettingUI.java"

# interfaces
.implements Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$BarClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI$1;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public barOnClick(I)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI$1;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->access$000(Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 71
    :cond_0
    sget v0, Lcom/transsion/camera/feature/slimbody/R$id;->face_beauty_bar:I

    if-ne p1, v0, :cond_1

    .line 72
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI$1;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->access$100(Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;)Z

    :cond_1
    return-void
.end method
