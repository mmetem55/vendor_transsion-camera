.class Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionTopBarItemUI$1;
.super Ljava/lang/Object;
.source "SuperDefinitionTopBarItemUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionTopBarItemUI;->overrideClickListener(Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionTopBarItemUI;

.field final synthetic val$listener:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionTopBarItemUI;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionTopBarItemUI$1;->this$0:Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionTopBarItemUI;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionTopBarItemUI$1;->val$listener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionTopBarItemUI$1;->this$0:Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionTopBarItemUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionTopBarItemUI;->access$000(Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionTopBarItemUI;)V

    .line 60
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionTopBarItemUI$1;->this$0:Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionTopBarItemUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionTopBarItemUI;->access$100(Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionTopBarItemUI;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 61
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getHighDefinitionBackCamera()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getHighDefinitionFrontCamera()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionTopBarItemUI$1;->this$0:Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionTopBarItemUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionTopBarItemUI;->access$200(Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionTopBarItemUI;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    const-string v1, "key_super_definition"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 64
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionTopBarItemUI$1;->val$listener:Landroid/view/View$OnClickListener;

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_1
    return-void
.end method
