.class Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager$GuideIconClickListener;
.super Ljava/lang/Object;
.source "HelpGuideUIManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GuideIconClickListener"
.end annotation


# instance fields
.field fm:Landroid/app/FragmentManager;

.field layoutId:I

.field pagerIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;Landroid/app/FragmentManager;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/FragmentManager;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 237
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager$GuideIconClickListener;->this$0:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    iput-object p2, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager$GuideIconClickListener;->fm:Landroid/app/FragmentManager;

    .line 239
    iput p3, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager$GuideIconClickListener;->layoutId:I

    .line 240
    iput-object p4, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager$GuideIconClickListener;->pagerIds:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 245
    invoke-static {}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onClick] , mIsEnable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager$GuideIconClickListener;->this$0:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->isEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 246
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager$GuideIconClickListener;->this$0:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->isEnable()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 249
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager$GuideIconClickListener;->fm:Landroid/app/FragmentManager;

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 250
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager$GuideIconClickListener;->this$0:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager$GuideIconClickListener;->pagerIds:Ljava/util/List;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->newInstance(Ljava/util/List;)Lcom/transsion/camera/app/ui/GuidePagerRootFragment;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->access$102(Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;Lcom/transsion/camera/app/ui/GuidePagerRootFragment;)Lcom/transsion/camera/app/ui/GuidePagerRootFragment;

    .line 251
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager$GuideIconClickListener;->this$0:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->access$100(Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;)Lcom/transsion/camera/app/ui/GuidePagerRootFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager$GuideIconClickListener;->this$0:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->access$200(Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;)Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    .line 252
    iget v0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager$GuideIconClickListener;->layoutId:I

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager$GuideIconClickListener;->this$0:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->access$100(Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;)Lcom/transsion/camera/app/ui/GuidePagerRootFragment;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    const-string v0, "guide_pager_root"

    .line 253
    invoke-virtual {p1, v0}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 254
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    .line 255
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager$GuideIconClickListener;->this$0:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->access$300(Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;)Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    move-result-object p0

    const/16 p1, 0x4d

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 256
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setGuideFragmentStartTime()V

    return-void
.end method
