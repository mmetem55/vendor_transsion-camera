.class Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$3;
.super Ljava/lang/Object;
.source "FacemojiFragment.java"

# interfaces
.implements Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItemAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$3;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItem;)V
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$3;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;

    iget-object v1, p1, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItem;->path:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->access$102(Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 122
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$3;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    iget-object p1, p1, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItem;->path:Ljava/lang/String;

    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/arcore/manager/IBackgroundOperator;->setBackgound(Ljava/lang/String;)Z

    return-void
.end method
