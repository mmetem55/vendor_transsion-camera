.class public Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;
.super Lcom/transsion/camera/feature/mode/makeup/adapter/ExpandableItemAdapter;
.source "VideoFaceBeautyExRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecyclerViewAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;


# direct methods
.method public static synthetic $r8$lambda$8yngAth7fSROGqMwd9p449GtrgU(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;->lambda$onBindViewHolder$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AZC08O99cc0eeAmFlFVHhrdn-qM(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;->lambda$onBindViewHolder$1(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$svJk8EZvasEyHwhkFKZvljbqX7Q(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Group;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;->lambda$onBindViewHolder$0(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Group;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)V
    .locals 0

    .line 597
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/adapter/ExpandableItemAdapter;-><init>()V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Group;Landroid/view/View;)V
    .locals 0

    .line 648
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/adapter/ExpandableItemAdapter;->toggle(Lcom/transsion/camera/feature/mode/makeup/adapter/Item;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$1(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;Landroid/view/View;)V
    .locals 1

    .line 659
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;->access$1500(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->access$302(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;Ljava/lang/String;)Ljava/lang/String;

    .line 660
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-static {p2, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->access$1600(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;)V

    .line 661
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->access$1700(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$2(Landroid/view/View;)V
    .locals 0

    .line 670
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->access$1400(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 597
    check-cast p1, Lcom/transsion/camera/feature/mode/makeup/adapter/ItemVH;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;->onBindViewHolder(Lcom/transsion/camera/feature/mode/makeup/adapter/ItemVH;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/transsion/camera/feature/mode/makeup/adapter/ItemVH;I)V
    .locals 4

    .line 630
    invoke-static {}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBindViewHolder,position:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mCurrentFeatureKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->access$300(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 631
    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/mode/makeup/adapter/ItemAdapter;->getItem(I)Lcom/transsion/camera/feature/mode/makeup/adapter/Item;

    move-result-object v0

    .line 632
    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter$1;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;)V

    .line 639
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v3, 0x3f4ccccd    # 0.8f

    invoke-static {v2, v3, v1}, Lcom/transsion/camera/utils/AnimationUtils;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 640
    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/mode/makeup/adapter/ItemAdapter;->getItemViewType(I)I

    move-result p2

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_0

    .line 673
    :pswitch_0
    check-cast v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Footer;

    .line 674
    check-cast p1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$FooterVH;

    .line 675
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$FooterVH;->access$1300(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$FooterVH;)Landroid/widget/ImageView;

    move-result-object p2

    iget v1, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Footer;->drawableId:I

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 676
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/ExpandableItemAdapter;->mLowLight:Z

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$FooterVH;->bindHolder(Ljava/lang/Object;Z)V

    goto :goto_0

    .line 665
    :pswitch_1
    check-cast v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Reset;

    .line 666
    check-cast p1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ResetVH;

    .line 667
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ResetVH;->access$1100(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ResetVH;)Landroid/widget/ImageView;

    move-result-object p2

    iget v1, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Reset;->drawableId:I

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 668
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ResetVH;->access$1200(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ResetVH;)Landroid/widget/TextView;

    move-result-object p2

    iget-object v1, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Reset;->title:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 669
    iget-boolean p2, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/ExpandableItemAdapter;->mLowLight:Z

    invoke-virtual {p1, v0, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ResetVH;->bindHolder(Ljava/lang/Object;Z)V

    .line 670
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 653
    :pswitch_2
    check-cast v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;

    .line 654
    check-cast p1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;

    .line 655
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;->access$800(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;->access$700(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 656
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;->access$1000(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;)Landroid/widget/TextView;

    move-result-object p2

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;->access$900(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 657
    iget-boolean p2, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/ExpandableItemAdapter;->mLowLight:Z

    invoke-virtual {p1, v0, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;->bindHolder(Ljava/lang/Object;Z)V

    .line 658
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 642
    :pswitch_3
    check-cast v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Group;

    .line 643
    check-cast p1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$GroupVH;

    .line 644
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$GroupVH;->access$500(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$GroupVH;)Landroid/widget/ImageView;

    move-result-object p2

    iget v1, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Group;->drawableId:I

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 645
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$GroupVH;->access$600(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$GroupVH;)Landroid/widget/TextView;

    move-result-object p2

    iget-object v1, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Group;->title:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 646
    iget-boolean p2, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/ExpandableItemAdapter;->mLowLight:Z

    invoke-virtual {p1, v0, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$GroupVH;->bindHolder(Ljava/lang/Object;Z)V

    .line 647
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Group;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xfa01
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 597
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/feature/mode/makeup/adapter/ItemVH;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/feature/mode/makeup/adapter/ItemVH;
    .locals 3

    .line 600
    invoke-static {}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateViewHolder,viewType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    const/4 p2, 0x0

    goto :goto_0

    .line 621
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/transsion/camera/feature/makeup/R$layout;->footer_layout:I

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 622
    new-instance p2, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$FooterVH;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-direct {p2, p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$FooterVH;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;Landroid/view/View;)V

    goto :goto_0

    .line 617
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/transsion/camera/feature/makeup/R$layout;->restore_layout:I

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 618
    new-instance p2, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ResetVH;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-direct {p2, p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ResetVH;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;Landroid/view/View;)V

    goto :goto_0

    .line 613
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/transsion/camera/feature/makeup/R$layout;->makeup_feature_skin_item:I

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 614
    new-instance p2, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-direct {p2, p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;Landroid/view/View;)V

    goto :goto_0

    .line 609
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/transsion/camera/feature/makeup/R$layout;->feature_item:I

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 610
    new-instance p2, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-direct {p2, p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;Landroid/view/View;)V

    goto :goto_0

    .line 605
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/transsion/camera/feature/makeup/R$layout;->feature_item:I

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 606
    new-instance p2, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$GroupVH;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-direct {p2, p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$GroupVH;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;Landroid/view/View;)V

    :goto_0
    return-object p2

    :pswitch_data_0
    .packed-switch 0xfa01
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
