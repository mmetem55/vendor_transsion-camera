.class Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "TimeLapseRateSingleUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mEntry:[Ljava/lang/String;

.field private mValues:[Ljava/lang/String;

.field final synthetic this$0:Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;


# direct methods
.method public static synthetic $r8$lambda$2DHR0qwIzvQyDW7I07u9JnoM8sc(Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabAdapter;->lambda$onCreateViewHolder$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 550
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabAdapter;->this$0:Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 551
    iput-object p2, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabAdapter;->mValues:[Ljava/lang/String;

    .line 552
    iput-object p3, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabAdapter;->mEntry:[Ljava/lang/String;

    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$0(Landroid/view/View;)V
    .locals 0

    .line 562
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabAdapter;->this$0:Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->access$1300(Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 580
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabAdapter;->mValues:[Ljava/lang/String;

    array-length p0, p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 545
    check-cast p1, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabAdapter;->onBindViewHolder(Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabViewHolder;I)V
    .locals 2

    .line 569
    iget-object v0, p1, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabViewHolder;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabAdapter;->mEntry:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 570
    iget-object v0, p1, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabViewHolder;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabAdapter;->mValues:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 571
    iget-object v0, p1, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabViewHolder;->mTextView:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 572
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabAdapter;->this$0:Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;

    iget-object v1, p1, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabViewHolder;->mTextView:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->access$1000(Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;Landroid/view/View;)V

    .line 573
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabAdapter;->this$0:Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->access$1100(Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabAdapter;->mValues:[Ljava/lang/String;

    aget-object p2, v1, p2

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 574
    iget-object p1, p1, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabViewHolder;->mTextView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabAdapter;->this$0:Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;->access$1200(Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI;)Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f0603ce

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 545
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabViewHolder;
    .locals 2

    .line 558
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c01ad

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 559
    new-instance p2, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabViewHolder;

    invoke-direct {p2, p1}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabViewHolder;-><init>(Landroid/view/View;)V

    .line 560
    iget-object p1, p2, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabViewHolder;->mTextView:Landroid/widget/TextView;

    const v0, 0x3f4ccccd    # 0.8f

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/transsion/camera/utils/AnimationUtils;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 561
    iget-object p1, p2, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabViewHolder;->mTextView:Landroid/widget/TextView;

    new-instance v0, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/timelapseratesingle/TimeLapseRateSingleUI$TabAdapter;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
