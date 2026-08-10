.class public final Lcom/transsion/widgetslib/dialog/PromptController;
.super Ljava/lang/Object;
.source "PromptController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/dialog/PromptController$ContentHolder;,
        Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;,
        Lcom/transsion/widgetslib/dialog/PromptController$ButtonHandler;
    }
.end annotation


# instance fields
.field private mAutoDismiss:Z

.field private final mBtnLayout:Landroid/widget/LinearLayout;

.field private final mButtonListener:Landroid/view/View$OnClickListener;

.field private mButtonNegative:Landroid/widget/Button;

.field private mButtonNegativeMessage:Landroid/os/Message;

.field private mButtonNegativeText:Ljava/lang/CharSequence;

.field private mButtonNeutral:Landroid/widget/Button;

.field private mButtonNeutralMessage:Landroid/os/Message;

.field private mButtonNeutralText:Ljava/lang/CharSequence;

.field private mButtonPositive:Landroid/widget/Button;

.field private mButtonPositiveMessage:Landroid/os/Message;

.field private mButtonPositiveText:Ljava/lang/CharSequence;

.field private mCancelOutSide:Z

.field private mCancelable:Z

.field public mCheckedItem:I

.field public mCheckedItems:[Z

.field private mCheckedView:Landroid/widget/CheckedTextView;

.field private final mContainer:Landroid/widget/RelativeLayout;

.field private mContentAdapter:Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;

.field private final mContext:Landroid/content/Context;

.field private final mDialogInterface:Landroid/content/DialogInterface;

.field private mFrameContainer:Landroid/widget/FrameLayout;

.field private mFrameContainerTrueHeight:I

.field private final mHandler:Landroid/os/Handler;

.field private mHasNegativeButton:Z

.field private mHasNeutralButton:Z

.field private mHasPositiveButton:Z

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mIsAlert:Z

.field private mIsAppDialogFragment:Z

.field private mIsButtonVertical:Z

.field private mIsInputDialog:Z

.field private mListView:Landroid/view/View;

.field private mNoBtnBottomInsets:I

.field private mPositiveButtonEnable:Z

.field private mScrollMessageView:Lcom/transsion/widgetslib/view/damping/DampingLayout;

.field private mTitleView:Landroid/widget/LinearLayout;

.field private final mView:Landroid/widget/FrameLayout;

.field private final mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 2

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 68
    iput v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mCheckedItem:I

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mIsButtonVertical:Z

    const/4 v1, 0x1

    .line 75
    iput-boolean v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mPositiveButtonEnable:Z

    .line 90
    iput-boolean v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mAutoDismiss:Z

    .line 91
    iput-boolean v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mIsInputDialog:Z

    .line 92
    iput-boolean v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mIsAppDialogFragment:Z

    .line 97
    new-instance v0, Lcom/transsion/widgetslib/dialog/PromptController$1;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/dialog/PromptController$1;-><init>(Lcom/transsion/widgetslib/dialog/PromptController;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonListener:Landroid/view/View$OnClickListener;

    .line 122
    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContext:Landroid/content/Context;

    .line 123
    iput-object p2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mDialogInterface:Landroid/content/DialogInterface;

    .line 124
    iput-object p3, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mWindow:Landroid/view/Window;

    .line 125
    new-instance v0, Lcom/transsion/widgetslib/dialog/PromptController$ButtonHandler;

    invoke-direct {v0, p2}, Lcom/transsion/widgetslib/dialog/PromptController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mHandler:Landroid/os/Handler;

    .line 126
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mInflater:Landroid/view/LayoutInflater;

    .line 127
    invoke-virtual {p3, v1}, Landroid/view/Window;->requestFeature(I)Z

    const/16 p2, 0x50

    .line 128
    invoke-virtual {p3, p2}, Landroid/view/Window;->setGravity(I)V

    .line 132
    sget p2, Lcom/transsion/widgetslib/R$layout;->os_prompt_dialog_container:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mView:Landroid/widget/FrameLayout;

    .line 133
    new-instance p2, Lcom/transsion/widgetslib/dialog/PromptController$2;

    invoke-direct {p2, p0}, Lcom/transsion/widgetslib/dialog/PromptController$2;-><init>(Lcom/transsion/widgetslib/dialog/PromptController;)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 139
    sget p2, Lcom/transsion/widgetslib/R$id;->mContainer:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContainer:Landroid/widget/RelativeLayout;

    .line 140
    sget p2, Lcom/transsion/widgetslib/R$id;->btnLayout:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mBtnLayout:Landroid/widget/LinearLayout;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/widget/Button;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonPositive:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/os/Message;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonPositiveMessage:Landroid/os/Message;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/transsion/widgetslib/dialog/PromptController;)Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContentAdapter:Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/transsion/widgetslib/dialog/PromptController;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/transsion/widgetslib/dialog/PromptController;->setListPositiveButtonStatus()V

    return-void
.end method

.method static synthetic access$1200(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/view/View;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mListView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/transsion/widgetslib/dialog/PromptController;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mFrameContainerTrueHeight:I

    return p0
.end method

.method static synthetic access$1400(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/widget/FrameLayout;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mFrameContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/widget/Button;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonNegative:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/os/Message;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonNegativeMessage:Landroid/os/Message;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/widget/Button;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonNeutral:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/os/Message;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonNeutralMessage:Landroid/os/Message;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/widgetslib/dialog/PromptController;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mAutoDismiss:Z

    return p0
.end method

.method static synthetic access$700(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/content/DialogInterface;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mDialogInterface:Landroid/content/DialogInterface;

    return-object p0
.end method

.method static synthetic access$800(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/os/Handler;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$900(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/widget/CheckedTextView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mCheckedView:Landroid/widget/CheckedTextView;

    return-object p0
.end method

.method static canTextInput(Landroid/view/View;)Z
    .locals 5

    .line 763
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 767
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 771
    :cond_1
    check-cast p0, Landroid/view/ViewGroup;

    .line 772
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :cond_2
    if-lez v0, :cond_3

    add-int/lit8 v0, v0, -0x1

    .line 775
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 776
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v3}, Lcom/transsion/widgetslib/dialog/PromptController;->canTextInput(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    :cond_3
    return v2
.end method

.method private dealCheckItems([Ljava/lang/CharSequence;[Z)V
    .locals 4

    if-nez p2, :cond_0

    .line 346
    array-length p1, p1

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mCheckedItems:[Z

    return-void

    .line 349
    :cond_0
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_1

    .line 350
    iput-object p2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mCheckedItems:[Z

    goto :goto_2

    .line 352
    :cond_1
    array-length v0, p1

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mCheckedItems:[Z

    const/4 v0, 0x0

    move v1, v0

    .line 353
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 354
    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mCheckedItems:[Z

    array-length v3, p2

    if-ge v1, v3, :cond_2

    aget-boolean v3, p2, v1

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    move v3, v0

    :goto_1
    aput-boolean v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method private generateListView(Landroid/widget/ListAdapter;Landroid/widget/AdapterView$OnItemClickListener;)Landroid/view/View;
    .locals 3

    .line 461
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/transsion/widgetslib/R$layout;->os_prompt_dialog_list_compat:I

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContainer:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 462
    sget v0, Lcom/transsion/widgetslib/R$id;->os_damp_list_view_compat:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ListView;

    .line 463
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 464
    invoke-virtual {p0, p2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/4 p1, 0x0

    .line 465
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    return-object p0
.end method

.method private generateListView(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/widget/AdapterView$OnItemClickListener;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;",
            "Landroid/widget/AdapterView$OnItemClickListener;",
            ")",
            "Landroidx/recyclerview/widget/RecyclerView;"
        }
    .end annotation

    .line 430
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/transsion/widgetslib/R$layout;->os_prompt_dialog_list:I

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContainer:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 431
    sget v1, Lcom/transsion/widgetslib/R$id;->os_damp_list_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 432
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v4, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 433
    new-instance v2, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v2}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 434
    instance-of v2, p1, Lcom/transsion/widgetslib/adapter/RecyclerAdapter;

    if-eqz v2, :cond_0

    .line 435
    move-object v2, p1

    check-cast v2, Lcom/transsion/widgetslib/adapter/RecyclerAdapter;

    invoke-virtual {v2, p2}, Lcom/transsion/widgetslib/adapter/RecyclerAdapter;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 436
    instance-of p2, p1, Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;

    if-eqz p2, :cond_0

    .line 437
    move-object p2, p1

    check-cast p2, Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;

    iput-object p2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContentAdapter:Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;

    .line 438
    invoke-virtual {p2, p0}, Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;->setWeakReference(Lcom/transsion/widgetslib/dialog/PromptController;)V

    .line 441
    :cond_0
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 443
    invoke-static {v1, v3, v3}, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->setUpOverScroll(Landroidx/recyclerview/widget/RecyclerView;IZ)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    move-result-object p1

    .line 445
    sget p2, Lcom/transsion/widgetslib/R$id;->os_damp_list_view_parent:I

    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 446
    instance-of v0, p2, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 447
    check-cast p2, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    .line 448
    invoke-virtual {p2, v1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->setOverScrollView(Landroid/view/View;)V

    .line 449
    new-instance v0, Lcom/transsion/widgetslib/dialog/PromptController$7;

    invoke-direct {v0, p0, p2}, Lcom/transsion/widgetslib/dialog/PromptController$7;-><init>(Lcom/transsion/widgetslib/dialog/PromptController;Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)V

    invoke-interface {p1, v0}, Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;->setOverScrollListener(Lcom/transsion/effectengine/bounceeffect/IOverScrollListener;)V

    :cond_1
    return-object v1
.end method

.method private getLayoutParamsContentLayout()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2

    .line 640
    new-instance p0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p0, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 642
    sget v0, Lcom/transsion/widgetslib/R$id;->os_module_dialog_damping_layout_title:I

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    return-object p0
.end method

.method private getLayoutParamsCustomLayout()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2

    .line 633
    new-instance p0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p0, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 635
    sget v0, Lcom/transsion/widgetslib/R$id;->os_module_dialog_damping_layout_content:I

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    return-object p0
.end method

.method private getLayoutParamsTitleLayout()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2

    .line 647
    new-instance p0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p0, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xa

    .line 649
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-object p0
.end method

.method private hasPickView(Landroid/view/View;)Z
    .locals 5

    .line 666
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    if-eqz v0, :cond_0

    return v1

    .line 670
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 674
    :cond_1
    check-cast p1, Landroid/view/ViewGroup;

    .line 675
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :cond_2
    if-lez v0, :cond_3

    add-int/lit8 v0, v0, -0x1

    .line 678
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 679
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    invoke-direct {p0, v3}, Lcom/transsion/widgetslib/dialog/PromptController;->hasPickView(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    :cond_3
    return v2
.end method

.method private noButtonInsets()V
    .locals 2

    .line 662
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mNoBtnBottomInsets:I

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, p0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    return-void
.end method

.method private setIconContent(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 846
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mTitleView:Landroid/widget/LinearLayout;

    sget v0, Lcom/transsion/widgetslib/R$id;->iconImg:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 848
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 849
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private setListPositiveButtonStatus()V
    .locals 4

    .line 420
    iget-boolean v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mPositiveButtonEnable:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonPositive:Landroid/widget/Button;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mListView:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 421
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContentAdapter:Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p0, :cond_1

    .line 422
    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;->getCheckedItemCount()I

    move-result p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2

    .line 423
    :cond_1
    instance-of p0, v1, Landroid/widget/ListView;

    if-eqz p0, :cond_3

    .line 424
    check-cast v1, Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result p0

    if-lez p0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_3
    :goto_2
    return-void
.end method

.method private setMultiChoiceList(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;",
            "Landroid/content/DialogInterface$OnMultiChoiceClickListener;",
            ")V"
        }
    .end annotation

    .line 403
    new-instance v0, Lcom/transsion/widgetslib/dialog/PromptController$6;

    invoke-direct {v0, p0, p2}, Lcom/transsion/widgetslib/dialog/PromptController$6;-><init>(Lcom/transsion/widgetslib/dialog/PromptController;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)V

    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/dialog/PromptController;->generateListView(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/widget/AdapterView$OnItemClickListener;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mListView:Landroid/view/View;

    return-void
.end method

.method private setupButtons(Z)V
    .locals 5

    .line 690
    iget-boolean v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mHasPositiveButton:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mHasNegativeButton:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mHasNeutralButton:Z

    if-nez v0, :cond_0

    .line 691
    invoke-direct {p0}, Lcom/transsion/widgetslib/dialog/PromptController;->noButtonInsets()V

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 694
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mFrameContainer:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lcom/transsion/widgetslib/dialog/PromptController;->canTextInput(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 695
    iput-boolean v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mIsButtonVertical:Z

    goto :goto_0

    .line 697
    :cond_1
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mBtnLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/transsion/widgetslib/R$layout;->os_dialog_horizontal_divider:I

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 698
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mWindow:Landroid/view/Window;

    const/high16 v1, 0x20000

    invoke-virtual {p1, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 702
    :goto_0
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mInflater:Landroid/view/LayoutInflater;

    .line 703
    iget-boolean v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mIsButtonVertical:Z

    if-eqz v1, :cond_2

    .line 704
    sget v1, Lcom/transsion/widgetslib/R$layout;->os_prompt_dialog_buttons_vertical:I

    goto :goto_1

    .line 705
    :cond_2
    sget v1, Lcom/transsion/widgetslib/R$layout;->os_prompt_dialog_buttons_horizontal:I

    :goto_1
    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mBtnLayout:Landroid/widget/LinearLayout;

    .line 702
    invoke-virtual {p1, v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 708
    sget v1, Lcom/transsion/widgetslib/R$id;->btn_positive:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonPositive:Landroid/widget/Button;

    .line 709
    iget-boolean v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mHasPositiveButton:Z

    const/16 v3, 0x8

    if-eqz v2, :cond_4

    .line 710
    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 711
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonPositive:Landroid/widget/Button;

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 712
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mCheckedView:Landroid/widget/CheckedTextView;

    if-eqz v1, :cond_3

    .line 713
    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2

    .line 715
    :cond_3
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonPositive:Landroid/widget/Button;

    iget-boolean v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mPositiveButtonEnable:Z

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 717
    :goto_2
    iget-boolean v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mIsAlert:Z

    if-eqz v1, :cond_5

    .line 718
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonPositive:Landroid/widget/Button;

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContext:Landroid/content/Context;

    sget v4, Lcom/transsion/widgetslib/R$color;->os_dialog_positive_btn_alert_color:I

    .line 719
    invoke-static {v2, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    .line 718
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_3

    .line 722
    :cond_4
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 725
    :cond_5
    :goto_3
    sget v1, Lcom/transsion/widgetslib/R$id;->btn_negative:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonNegative:Landroid/widget/Button;

    .line 726
    iget-boolean v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mHasNegativeButton:Z

    if-eqz v2, :cond_6

    .line 727
    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 728
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonNegative:Landroid/widget/Button;

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    .line 730
    :cond_6
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 733
    :goto_4
    sget v1, Lcom/transsion/widgetslib/R$id;->btn_neutral:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonNeutral:Landroid/widget/Button;

    .line 734
    iget-boolean v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mHasNeutralButton:Z

    if-eqz v2, :cond_7

    .line 735
    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 736
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5

    .line 738
    :cond_7
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 741
    :goto_5
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mFrameContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_8

    invoke-direct {p0, v1}, Lcom/transsion/widgetslib/dialog/PromptController;->hasPickView(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 742
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonPositive:Landroid/widget/Button;

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_dialog_button_text_size_nrsp:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/Button;->setTextSize(IF)V

    .line 743
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonNegative:Landroid/widget/Button;

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/Button;->setTextSize(IF)V

    .line 744
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/Button;->setTextSize(IF)V

    .line 746
    :cond_8
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mBtnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 747
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContainer:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_c

    .line 748
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_dialog_button_height:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    .line 749
    iget-boolean v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mIsButtonVertical:Z

    if-eqz v1, :cond_9

    .line 750
    iget-boolean v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mHasPositiveButton:Z

    mul-int/2addr v1, p1

    iget-boolean v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mHasNegativeButton:Z

    mul-int/2addr v2, p1

    add-int/2addr v1, v2

    iget-boolean v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mHasNeutralButton:Z

    mul-int/2addr p1, v2

    add-int/2addr p1, v1

    .line 752
    :cond_9
    iget-boolean v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mIsInputDialog:Z

    if-eqz v1, :cond_a

    .line 753
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    int-to-float p1, p1

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_dialog_divider_margin_10:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    add-float/2addr p1, p0

    float-to-int p0, p1

    invoke-virtual {v1, v0, v0, v0, p0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_7

    .line 755
    :cond_a
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContext:Landroid/content/Context;

    .line 756
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mListView:Landroid/view/View;

    if-eqz p0, :cond_b

    sget p0, Lcom/transsion/widgetslib/R$dimen;->os_dialog_divider_margin_10:I

    goto :goto_6

    :cond_b
    sget p0, Lcom/transsion/widgetslib/R$dimen;->os_dialog_divider_margin:I

    :goto_6
    invoke-virtual {v2, p0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    add-int/2addr p1, p0

    .line 755
    invoke-virtual {v1, v0, v0, v0, p1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    :cond_c
    :goto_7
    return-void
.end method

.method private setupView()V
    .locals 10

    .line 512
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 513
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mBtnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 515
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mTitleView:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 516
    :goto_0
    iget-object v4, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mScrollMessageView:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    if-eqz v4, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v2

    .line 517
    :goto_1
    iget-object v5, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mFrameContainer:Landroid/widget/FrameLayout;

    if-eqz v5, :cond_2

    move v5, v1

    goto :goto_2

    :cond_2
    move v5, v2

    .line 518
    :goto_2
    iget-object v6, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mListView:Landroid/view/View;

    if-eqz v6, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    if-eqz v3, :cond_4

    .line 522
    iget-object v6, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContext:Landroid/content/Context;

    sget v7, Lcom/transsion/widgetslib/R$color;->os_altitude_secondary_color:I

    invoke-static {v6, v7}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 523
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mTitleView:Landroid/widget/LinearLayout;

    sget v6, Lcom/transsion/widgetslib/R$id;->os_module_dialog_damping_layout_title:I

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setId(I)V

    :cond_4
    if-eqz v4, :cond_8

    if-eqz v3, :cond_5

    .line 528
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mScrollMessageView:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    iget-object v6, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/transsion/widgetslib/R$dimen;->os_dialog_message_padding_top:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v0, v2, v6, v2, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto :goto_4

    :cond_5
    if-eqz v5, :cond_6

    .line 530
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mScrollMessageView:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    iget-object v6, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/transsion/widgetslib/R$dimen;->os_dialog_message_padding_top:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v0, v2, v2, v2, v6}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto :goto_4

    .line 532
    :cond_6
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mScrollMessageView:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    :goto_4
    if-eqz v3, :cond_7

    .line 535
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContainer:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mScrollMessageView:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    invoke-direct {p0}, Lcom/transsion/widgetslib/dialog/PromptController;->getLayoutParamsContentLayout()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5

    .line 537
    :cond_7
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContainer:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mScrollMessageView:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :cond_8
    :goto_5
    if-eqz v1, :cond_a

    if-nez v4, :cond_a

    .line 542
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mListView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_9

    .line 544
    iget-object v6, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContainer:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcom/transsion/widgetslib/dialog/PromptController;->getLayoutParamsContentLayout()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    .line 546
    :cond_9
    iget-object v6, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :cond_a
    :goto_6
    if-eqz v1, :cond_b

    if-eqz v3, :cond_b

    .line 550
    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/PromptController;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 553
    iget-object v6, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/transsion/widgetslib/R$dimen;->os_dialog_padding_left_right:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    iget-object v7, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContext:Landroid/content/Context;

    .line 555
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/transsion/widgetslib/R$dimen;->os_dialog_title_padding_end:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iget-object v8, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContext:Landroid/content/Context;

    .line 556
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/transsion/widgetslib/R$dimen;->os_dialog_title_padding_bottom:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    .line 553
    invoke-virtual {v0, v6, v2, v7, v8}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    :cond_b
    if-eqz v1, :cond_c

    if-nez v3, :cond_c

    .line 561
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    :cond_c
    const/4 v0, -0x1

    if-eqz v5, :cond_12

    const/4 v6, -0x2

    if-eqz v4, :cond_d

    .line 566
    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mScrollMessageView:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    .line 567
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 568
    iput v6, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 569
    iget-object v6, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mScrollMessageView:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    invoke-virtual {v6, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_7

    :cond_d
    if-eqz v1, :cond_e

    .line 571
    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContainer:Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mListView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v2

    if-eq v2, v0, :cond_f

    .line 572
    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mFrameContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 573
    iput v6, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/4 v6, 0x3

    .line 574
    sget v7, Lcom/transsion/widgetslib/R$id;->os_damp_list_view_parent:I

    invoke-virtual {v2, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 575
    iget-object v6, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mFrameContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_7

    .line 577
    :cond_e
    iget-object v6, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mFrameContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0, v6}, Lcom/transsion/widgetslib/dialog/PromptController;->hasPickView(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 578
    iget-object v6, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mTitleView:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_f

    .line 579
    sget v7, Lcom/transsion/widgetslib/R$id;->text_title:I

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_f

    .line 581
    iget-object v7, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/transsion/widgetslib/R$dimen;->os_body_font_nrsp:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    invoke-virtual {v6, v2, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 582
    iget-object v7, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/transsion/widgetslib/R$dimen;->os_dialog_padding_left_right:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v8, v7

    const/high16 v9, 0x3fc00000    # 1.5f

    div-float/2addr v8, v9

    float-to-int v8, v8

    .line 584
    invoke-virtual {v6, v7, v2, v8, v2}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    :cond_f
    :goto_7
    if-eqz v4, :cond_10

    .line 592
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mFrameContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContext:Landroid/content/Context;

    sget v4, Lcom/transsion/widgetslib/R$color;->os_altitude_secondary_color:I

    invoke-static {v2, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 593
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContainer:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mFrameContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/transsion/widgetslib/dialog/PromptController;->getLayoutParamsCustomLayout()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_8

    :cond_10
    if-eqz v1, :cond_11

    .line 595
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mListView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 596
    new-instance v2, Lcom/transsion/widgetslib/dialog/PromptController$10;

    invoke-direct {v2, p0, v1}, Lcom/transsion/widgetslib/dialog/PromptController$10;-><init>(Lcom/transsion/widgetslib/dialog/PromptController;Landroid/view/ViewGroup;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 618
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mFrameContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContext:Landroid/content/Context;

    sget v4, Lcom/transsion/widgetslib/R$color;->os_altitude_secondary_color:I

    invoke-static {v2, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 619
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContainer:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mFrameContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto :goto_8

    .line 621
    :cond_11
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContainer:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mFrameContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/transsion/widgetslib/dialog/PromptController;->getLayoutParamsContentLayout()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_12
    :goto_8
    if-eqz v3, :cond_13

    .line 625
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContainer:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mTitleView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-ne v1, v0, :cond_13

    .line 626
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mTitleView:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/transsion/widgetslib/dialog/PromptController;->getLayoutParamsTitleLayout()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 629
    :cond_13
    invoke-direct {p0, v5}, Lcom/transsion/widgetslib/dialog/PromptController;->setupButtons(Z)V

    return-void
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 1

    const/4 v0, -0x3

    if-eq p1, v0, :cond_2

    const/4 v0, -0x2

    if-eq p1, v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 787
    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonPositive:Landroid/widget/Button;

    return-object p0

    .line 789
    :cond_1
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonNegative:Landroid/widget/Button;

    return-object p0

    .line 791
    :cond_2
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonNeutral:Landroid/widget/Button;

    return-object p0
.end method

.method public getCheckedView()Landroid/widget/CheckedTextView;
    .locals 0

    .line 209
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mCheckedView:Landroid/widget/CheckedTextView;

    return-object p0
.end method

.method public getIsAppDialogFragment()Z
    .locals 0

    .line 871
    iget-boolean p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mIsAppDialogFragment:Z

    return p0
.end method

.method public getListView()Landroid/view/View;
    .locals 0

    .line 806
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mListView:Landroid/view/View;

    return-object p0
.end method

.method public getNoBtnBottomInsets()I
    .locals 0

    .line 654
    iget p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mNoBtnBottomInsets:I

    return p0
.end method

.method public getTitleView()Landroid/widget/TextView;
    .locals 1

    .line 799
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mTitleView:Landroid/widget/LinearLayout;

    if-eqz p0, :cond_0

    .line 800
    sget v0, Lcom/transsion/widgetslib/R$id;->text_title:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public haveInputAbility()Z
    .locals 1

    .line 150
    iget-boolean v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mIsInputDialog:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/transsion/widgetslib/dialog/PromptController;->canTextInput(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mFrameContainer:Landroid/widget/FrameLayout;

    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/transsion/widgetslib/dialog/PromptController;->canTextInput(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public installContent()V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mWindow:Landroid/view/Window;

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 145
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mWindow:Landroid/view/Window;

    sget v1, Lcom/transsion/widgetslib/R$style;->OsInputDialogAnimStyle:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 146
    invoke-direct {p0}, Lcom/transsion/widgetslib/dialog/PromptController;->setupView()V

    return-void
.end method

.method public isCancelable()Z
    .locals 0

    .line 887
    iget-boolean p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mCancelable:Z

    return p0
.end method

.method public isCanceledOnTouchOutside()Z
    .locals 0

    .line 895
    iget-boolean p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mCancelOutSide:Z

    return p0
.end method

.method public onPrepareListView(Lcom/transsion/widgetslib/dialog/PromptParams$OnPrepareListViewListener;)V
    .locals 1

    .line 497
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mListView:Landroid/view/View;

    instance-of v0, p0, Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 498
    check-cast p0, Landroid/widget/ListView;

    invoke-interface {p1, p0}, Lcom/transsion/widgetslib/dialog/PromptParams$OnPrepareListViewListener;->onPrepareListView(Landroid/widget/ListView;)V

    :cond_0
    return-void
.end method

.method public setAutoDismiss(Z)V
    .locals 0

    .line 927
    iput-boolean p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mAutoDismiss:Z

    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 1

    .line 231
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p4, :cond_1

    if-eqz p3, :cond_1

    .line 236
    iget-object p4, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p4, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    :cond_1
    const/4 p3, -0x3

    const/4 v0, 0x1

    if-eq p1, p3, :cond_4

    const/4 p3, -0x2

    if-eq p1, p3, :cond_3

    const/4 p3, -0x1

    if-ne p1, p3, :cond_2

    .line 241
    iput-object p2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 242
    iput-object p4, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonPositiveMessage:Landroid/os/Message;

    .line 243
    iput-boolean v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mHasPositiveButton:Z

    goto :goto_0

    .line 256
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Button does not exist"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 246
    :cond_3
    iput-object p2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 247
    iput-object p4, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonNegativeMessage:Landroid/os/Message;

    .line 248
    iput-boolean v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mHasNegativeButton:Z

    goto :goto_0

    .line 251
    :cond_4
    iput-object p2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 252
    iput-object p4, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonNeutralMessage:Landroid/os/Message;

    .line 253
    iput-boolean v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mHasNeutralButton:Z

    :goto_0
    return-void
.end method

.method public setButtonVertical(Z)V
    .locals 0

    .line 931
    iput-boolean p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mIsButtonVertical:Z

    return-void
.end method

.method public setCancelable(Z)V
    .locals 0

    .line 884
    iput-boolean p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mCancelable:Z

    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .locals 0

    .line 891
    iput-boolean p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mCancelOutSide:Z

    return-void
.end method

.method public setCheckedItem(I)V
    .locals 1

    .line 503
    iput p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mCheckedItem:I

    .line 504
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mListView:Landroid/view/View;

    instance-of v0, p0, Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 505
    check-cast p0, Landroid/widget/ListView;

    const/4 v0, 0x1

    .line 506
    invoke-virtual {p0, p1, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 507
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setSelection(I)V

    :cond_0
    return-void
.end method

.method public setElegantTextHeight(Z)V
    .locals 1

    .line 875
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mScrollMessageView:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    if-eqz p0, :cond_0

    .line 876
    sget v0, Lcom/transsion/widgetslib/R$id;->text_message:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 877
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->isElegantTextHeight()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 878
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    :cond_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 836
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-ne v0, p1, :cond_0

    if-eqz p1, :cond_2

    .line 837
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mTitleView:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    .line 838
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/transsion/widgetslib/R$layout;->os_prompt_dialog_title:I

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContainer:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mTitleView:Landroid/widget/LinearLayout;

    .line 840
    :cond_1
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/dialog/PromptController;->setIconContent(Landroid/graphics/drawable/Drawable;)V

    .line 841
    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mIcon:Landroid/graphics/drawable/Drawable;

    :cond_2
    return-void
.end method

.method public setIsAlert(Z)V
    .locals 0

    .line 810
    iput-boolean p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mIsAlert:Z

    return-void
.end method

.method public setIsAppDialogFragment(Z)V
    .locals 0

    .line 867
    iput-boolean p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mIsAppDialogFragment:Z

    return-void
.end method

.method public setIsInputDialog(Z)V
    .locals 0

    .line 863
    iput-boolean p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mIsInputDialog:Z

    return-void
.end method

.method public setList(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    .line 285
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 286
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 288
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 290
    :cond_0
    new-instance p1, Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;

    invoke-direct {p1, v0}, Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;-><init>(Ljava/util/List;)V

    .line 291
    invoke-virtual {p0, p1, p3}, Lcom/transsion/widgetslib/dialog/PromptController;->setList(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/content/DialogInterface$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 293
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public setList(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    .line 485
    new-instance v0, Lcom/transsion/widgetslib/dialog/PromptController$9;

    invoke-direct {v0, p0, p2}, Lcom/transsion/widgetslib/dialog/PromptController$9;-><init>(Lcom/transsion/widgetslib/dialog/PromptController;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/dialog/PromptController;->generateListView(Landroid/widget/ListAdapter;Landroid/widget/AdapterView$OnItemClickListener;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mListView:Landroid/view/View;

    return-void
.end method

.method public setList(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;",
            "Landroid/content/DialogInterface$OnClickListener;",
            ")V"
        }
    .end annotation

    .line 271
    new-instance v0, Lcom/transsion/widgetslib/dialog/PromptController$4;

    invoke-direct {v0, p0, p2}, Lcom/transsion/widgetslib/dialog/PromptController$4;-><init>(Lcom/transsion/widgetslib/dialog/PromptController;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/dialog/PromptController;->generateListView(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/widget/AdapterView$OnItemClickListener;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mListView:Landroid/view/View;

    return-void
.end method

.method public setList([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    .line 265
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 266
    new-instance v0, Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;

    invoke-direct {v0, p1}, Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;-><init>(Ljava/util/List;)V

    .line 267
    invoke-virtual {p0, v0, p2}, Lcom/transsion/widgetslib/dialog/PromptController;->setList(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1

    .line 854
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mScrollMessageView:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    if-eqz v0, :cond_0

    .line 855
    sget p0, Lcom/transsion/widgetslib/R$id;->text_message:I

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 856
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 858
    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/dialog/PromptController;->setMessageView(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public setMessageView(Ljava/lang/CharSequence;)V
    .locals 4

    .line 176
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/transsion/widgetslib/R$layout;->os_prompt_dialog_message:I

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContainer:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/view/damping/DampingLayout;

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mScrollMessageView:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    .line 178
    sget p0, Lcom/transsion/widgetslib/R$id;->text_message:I

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 179
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setMultiChoiceList(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)V
    .locals 1

    .line 389
    :try_start_0
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 390
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 392
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 394
    :cond_0
    new-instance p1, Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;

    const/4 p2, 0x2

    invoke-direct {p1, p3, p2}, Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;-><init>(Ljava/util/List;I)V

    .line 395
    invoke-direct {p0, p1, p4}, Lcom/transsion/widgetslib/dialog/PromptController;->setMultiChoiceList(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 397
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public setMultiChoiceList([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)V
    .locals 1

    .line 338
    invoke-direct {p0, p1, p2}, Lcom/transsion/widgetslib/dialog/PromptController;->dealCheckItems([Ljava/lang/CharSequence;[Z)V

    .line 339
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 340
    new-instance p2, Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;

    const/4 v0, 0x2

    invoke-direct {p2, p1, v0}, Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;-><init>(Ljava/util/List;I)V

    .line 341
    invoke-direct {p0, p2, p3}, Lcom/transsion/widgetslib/dialog/PromptController;->setMultiChoiceList(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)V

    return-void
.end method

.method public setNoBtnBottomInsets(I)V
    .locals 0

    .line 658
    iput p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mNoBtnBottomInsets:I

    return-void
.end method

.method public setPositiveButtonEnable(Z)V
    .locals 0

    .line 261
    iput-boolean p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mPositiveButtonEnable:Z

    return-void
.end method

.method public setSingleChecked(Ljava/lang/CharSequence;ZLandroid/content/DialogInterface$OnClickListener;)V
    .locals 3

    .line 184
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    sget v0, Lcom/transsion/widgetslib/R$layout;->os_prompt_dialog_singlechecked:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/widgetslib/dialog/PromptController;->setView(ILandroid/view/View;)V

    .line 186
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mFrameContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 187
    sget v2, Lcom/transsion/widgetslib/R$id;->text_choice:I

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mCheckedView:Landroid/widget/CheckedTextView;

    .line 188
    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->getInstance(Landroid/content/Context;)Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v1, v1}, Landroid/widget/CheckedTextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 189
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mCheckedView:Landroid/widget/CheckedTextView;

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {v0, p1}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mCheckedView:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, p2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 192
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mCheckedView:Landroid/widget/CheckedTextView;

    new-instance p2, Lcom/transsion/widgetslib/dialog/PromptController$3;

    invoke-direct {p2, p0, p3}, Lcom/transsion/widgetslib/dialog/PromptController$3;-><init>(Lcom/transsion/widgetslib/dialog/PromptController;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1, p2}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setSingleChoiceList(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    .line 324
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 325
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 326
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 327
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 329
    :cond_0
    new-instance p1, Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;

    const/4 p2, 0x1

    invoke-direct {p1, v0, p2}, Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;-><init>(Ljava/util/List;I)V

    .line 330
    invoke-virtual {p0, p1, p3}, Lcom/transsion/widgetslib/dialog/PromptController;->setSingleChoiceList(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/content/DialogInterface$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 332
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public setSingleChoiceList(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    .line 470
    new-instance v0, Lcom/transsion/widgetslib/dialog/PromptController$8;

    invoke-direct {v0, p0, p2}, Lcom/transsion/widgetslib/dialog/PromptController$8;-><init>(Lcom/transsion/widgetslib/dialog/PromptController;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/dialog/PromptController;->generateListView(Landroid/widget/ListAdapter;Landroid/widget/AdapterView$OnItemClickListener;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mListView:Landroid/view/View;

    .line 479
    instance-of p0, p1, Landroid/widget/ListView;

    if-eqz p0, :cond_0

    .line 480
    check-cast p1, Landroid/widget/ListView;

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setChoiceMode(I)V

    :cond_0
    return-void
.end method

.method public setSingleChoiceList(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;",
            "Landroid/content/DialogInterface$OnClickListener;",
            ")V"
        }
    .end annotation

    .line 306
    new-instance v0, Lcom/transsion/widgetslib/dialog/PromptController$5;

    invoke-direct {v0, p0, p2}, Lcom/transsion/widgetslib/dialog/PromptController$5;-><init>(Lcom/transsion/widgetslib/dialog/PromptController;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/dialog/PromptController;->generateListView(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/widget/AdapterView$OnItemClickListener;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mListView:Landroid/view/View;

    return-void
.end method

.method public setSingleChoiceList([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    .line 299
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 300
    new-instance v0, Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;-><init>(Ljava/util/List;I)V

    .line 301
    invoke-virtual {p0, v0, p2}, Lcom/transsion/widgetslib/dialog/PromptController;->setSingleChoiceList(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 814
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mTitleView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 815
    sget p0, Lcom/transsion/widgetslib/R$id;->text_title:I

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 816
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 818
    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/dialog/PromptController;->setTitleView(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public setTitleSingleLine()V
    .locals 4

    .line 823
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mTitleView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 824
    sget p0, Lcom/transsion/widgetslib/R$id;->text_title:I

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 825
    invoke-virtual {p0}, Landroid/widget/TextView;->setSingleLine()V

    .line 826
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0

    .line 828
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/transsion/widgetslib/R$layout;->os_prompt_dialog_title:I

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContainer:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mTitleView:Landroid/widget/LinearLayout;

    .line 829
    sget p0, Lcom/transsion/widgetslib/R$id;->text_title:I

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 830
    invoke-virtual {p0}, Landroid/widget/TextView;->setSingleLine()V

    .line 831
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :goto_0
    return-void
.end method

.method public setTitleView(Ljava/lang/CharSequence;)V
    .locals 4

    .line 154
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mTitleView:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/transsion/widgetslib/R$layout;->os_prompt_dialog_title:I

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContainer:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mTitleView:Landroid/widget/LinearLayout;

    .line 158
    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mTitleView:Landroid/widget/LinearLayout;

    sget v0, Lcom/transsion/widgetslib/R$id;->text_title:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 159
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setTopTitle(Ljava/lang/CharSequence;)V
    .locals 4

    .line 164
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mTitleView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/transsion/widgetslib/R$layout;->os_prompt_dialog_title:I

    iget-object v3, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mTitleView:Landroid/widget/LinearLayout;

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mTitleView:Landroid/widget/LinearLayout;

    sget v2, Lcom/transsion/widgetslib/R$id;->text_top_title:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 169
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/widgetslib/R$color;->os_text_tertiary_color:I

    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 170
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 171
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setView(ILandroid/view/View;)V
    .locals 4

    if-nez p1, :cond_0

    if-eqz p2, :cond_2

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/transsion/widgetslib/R$layout;->os_prompt_dialog_view:I

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContainer:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mFrameContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1

    .line 216
    iget-object p2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p2, p1, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 218
    :cond_1
    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 221
    :goto_0
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mFrameContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mFrameContainerTrueHeight:I

    if-nez p1, :cond_2

    .line 223
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mFrameContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v3, v3}, Landroid/widget/FrameLayout;->measure(II)V

    .line 224
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mFrameContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mFrameContainerTrueHeight:I

    :cond_2
    return-void
.end method
