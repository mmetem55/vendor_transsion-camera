.class public final synthetic Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$$ExternalSyntheticLambda5;->f$0:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$$ExternalSyntheticLambda5;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$$ExternalSyntheticLambda5;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$$ExternalSyntheticLambda5;->f$0:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$$ExternalSyntheticLambda5;->f$1:Ljava/util/List;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$$ExternalSyntheticLambda5;->f$2:Ljava/util/List;

    check-cast p1, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    invoke-static {v0, v1, p0, p1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->$r8$lambda$2RukurdqLSjxJsz3M-q06yx28Lc(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;Ljava/util/List;Ljava/util/List;Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;)V

    return-void
.end method
