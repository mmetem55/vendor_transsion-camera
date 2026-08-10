.class public Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;
.super Lcom/transsion/camera/feature/mode/makeup/adapter/ExpandableItemAdapter;
.source "FaceBeautyExRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecyclerViewAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;


# direct methods
.method public static synthetic $r8$lambda$FWbDs5J0Aj-i-cCrOhLQz-cLoTI(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Group;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;->lambda$onBindViewHolder$0(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Group;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SErcw1oj8W0attY0QyvL73uic8k(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;->lambda$onBindViewHolder$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TXnfB7IBc-D-kvUZ0klCQNO1UAY(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;->lambda$onBindViewHolder$1(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;)V
    .locals 0

    .line 653
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/adapter/ExpandableItemAdapter;-><init>()V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Group;Landroid/view/View;)V
    .locals 0

    .line 704
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/adapter/ExpandableItemAdapter;->toggle(Lcom/transsion/camera/feature/mode/makeup/adapter/Item;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$1(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;Landroid/view/View;)V
    .locals 1

    .line 715
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;->access$1400(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->access$202(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;Ljava/lang/String;)Ljava/lang/String;

    .line 717
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;

    invoke-static {p2, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->access$1500(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;)V

    .line 718
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->access$1600(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$2(Landroid/view/View;)V
    .locals 0

    .line 727
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->access$1300(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 653
    check-cast p1, Lcom/transsion/camera/feature/mode/makeup/adapter/ItemVH;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;->onBindViewHolder(Lcom/transsion/camera/feature/mode/makeup/adapter/ItemVH;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/transsion/camera/feature/mode/makeup/adapter/ItemVH;I)V
    .locals 4

    .line 686
    invoke-static {}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBindViewHolder,position:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 687
    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/mode/makeup/adapter/ItemAdapter;->getItem(I)Lcom/transsion/camera/feature/mode/makeup/adapter/Item;

    move-result-object v0

    .line 688
    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter$1;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;)V

    .line 695
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v3, 0x3f4ccccd    # 0.8f

    invoke-static {v2, v3, v1}, Lcom/transsion/camera/utils/AnimationUtils;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 696
    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/mode/makeup/adapter/ItemAdapter;->getItemViewType(I)I

    move-result p2

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_0

    .line 730
    :pswitch_0
    check-cast v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Footer;

    .line 731
    check-cast p1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$FooterVH;

    .line 732
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$FooterVH;->access$1200(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$FooterVH;)Landroid/widget/ImageView;

    move-result-object p2

    iget v1, v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Footer;->drawableId:I

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 733
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/ExpandableItemAdapter;->mLowLight:Z

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$FooterVH;->bindHolder(Ljava/lang/Object;Z)V

    goto :goto_0

    .line 722
    :pswitch_1
    check-cast v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Reset;

    .line 723
    check-cast p1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$ResetVH;

    .line 724
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$ResetVH;->access$1000(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$ResetVH;)Landroid/widget/ImageView;

    move-result-object p2

    iget v1, v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Reset;->drawableId:I

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 725
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$ResetVH;->access$1100(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$ResetVH;)Landroid/widget/TextView;

    move-result-object p2

    iget-object v1, v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Reset;->title:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 726
    iget-boolean p2, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/ExpandableItemAdapter;->mLowLight:Z

    invoke-virtual {p1, v0, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$ResetVH;->bindHolder(Ljava/lang/Object;Z)V

    .line 727
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 709
    :pswitch_2
    check-cast v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;

    .line 710
    check-cast p1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$ChildVH;

    .line 711
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$ChildVH;->access$700(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$ChildVH;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;->access$600(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 712
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$ChildVH;->access$900(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$ChildVH;)Landroid/widget/TextView;

    move-result-object p2

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;->access$800(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 713
    iget-boolean p2, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/ExpandableItemAdapter;->mLowLight:Z

    invoke-virtual {p1, v0, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$ChildVH;->bindHolder(Ljava/lang/Object;Z)V

    .line 714
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 698
    :pswitch_3
    check-cast v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Group;

    .line 699
    check-cast p1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$GroupVH;

    .line 700
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$GroupVH;->access$400(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$GroupVH;)Landroid/widget/ImageView;

    move-result-object p2

    iget v1, v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Group;->drawableId:I

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 701
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$GroupVH;->access$500(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$GroupVH;)Landroid/widget/TextView;

    move-result-object p2

    iget-object v1, v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Group;->title:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 702
    iget-boolean p2, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/ExpandableItemAdapter;->mLowLight:Z

    invoke-virtual {p1, v0, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$GroupVH;->bindHolder(Ljava/lang/Object;Z)V

    .line 703
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Group;)V

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

    .line 653
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/feature/mode/makeup/adapter/ItemVH;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/feature/mode/makeup/adapter/ItemVH;
    .locals 3

    .line 656
    invoke-static {}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

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

    .line 677
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/transsion/camera/feature/makeup/R$layout;->footer_layout:I

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 678
    new-instance p2, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$FooterVH;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;

    invoke-direct {p2, p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$FooterVH;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;Landroid/view/View;)V

    goto :goto_0

    .line 673
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/transsion/camera/feature/makeup/R$layout;->restore_layout:I

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 674
    new-instance p2, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$ResetVH;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;

    invoke-direct {p2, p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$ResetVH;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;Landroid/view/View;)V

    goto :goto_0

    .line 669
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/transsion/camera/feature/makeup/R$layout;->makeup_feature_skin_item:I

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 670
    new-instance p2, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$ChildVH;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;

    invoke-direct {p2, p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$ChildVH;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;Landroid/view/View;)V

    goto :goto_0

    .line 665
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/transsion/camera/feature/makeup/R$layout;->feature_item:I

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 666
    new-instance p2, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$ChildVH;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;

    invoke-direct {p2, p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$ChildVH;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;Landroid/view/View;)V

    goto :goto_0

    .line 661
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/transsion/camera/feature/makeup/R$layout;->feature_item:I

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 662
    new-instance p2, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$GroupVH;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;

    invoke-direct {p2, p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$GroupVH;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;Landroid/view/View;)V

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
