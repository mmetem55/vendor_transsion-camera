.class Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$6;
.super Ljava/lang/Object;
.source "CommonFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;)V
    .locals 0

    .line 372
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$6;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 375
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$6;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->access$100(Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;)Lcom/transsion/camera/feature/arcore/common/widgets/IAudioAdapter;

    move-result-object p1

    invoke-interface {p1, p3}, Lcom/transsion/camera/feature/arcore/common/widgets/IAudioAdapter;->updateCurrentPosition(I)V

    .line 376
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$6;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->isExpandUI()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 377
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$6;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->access$200(Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;)V

    goto :goto_0

    .line 379
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$6;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->access$300(Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;)V

    .line 381
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$6;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    iget-object p1, p1, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeMusicButton:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 382
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$6;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    invoke-static {p1, p3}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->access$400(Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;I)V

    .line 383
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$6;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->access$500(Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$6;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    .line 384
    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->access$500(Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const-string p4, "key_audio_icon_position"

    .line 383
    invoke-virtual {p1, p4, p3, p0, p2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
