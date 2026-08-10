.class public Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "MoreGridListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field private mAnimFlag:Z

.field private final mContentLeftMargin:I

.field private mMoreGridBackground:Landroid/widget/ImageView;

.field private mMoreGridItemIcon:Landroid/widget/ImageView;

.field private mMoreGridItemTitle:Landroid/widget/TextView;

.field private mMoreGridSellingPoint:Landroid/widget/ImageView;

.field private mMoreLinearContent:Landroid/view/View;

.field private mMoreLinearModeDesc:Landroid/widget/TextView;

.field private mMoreLinearModeIcon:Landroid/widget/ImageView;

.field private mMoreLinearModeTitle:Landroid/widget/TextView;

.field private mMoreLinearRootLayout:Landroid/widget/RelativeLayout;

.field private mMoreLinearSellingPoint:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;


# direct methods
.method public static synthetic $r8$lambda$bFzWd6mpmpTza6L3r_QpDCBIMKc(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->lambda$initializeListener$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$v9oC7fJAkE5s1gsXIQtwC_mwIaQ(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->lambda$initializeListener$0(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method constructor <init>(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;Landroid/view/View;I)V
    .locals 1

    .line 328
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->this$0:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    .line 329
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 330
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0703da

    .line 331
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->mContentLeftMargin:I

    const/4 p1, 0x2

    if-ne p3, p1, :cond_0

    const p1, 0x7f0902ce

    .line 333
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->mMoreLinearContent:Landroid/view/View;

    const p1, 0x7f0902d0

    .line 334
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->mMoreLinearModeIcon:Landroid/widget/ImageView;

    const p1, 0x7f0902d2

    .line 335
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->mMoreLinearModeTitle:Landroid/widget/TextView;

    const p1, 0x7f0902cf

    .line 336
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->mMoreLinearModeDesc:Landroid/widget/TextView;

    const p1, 0x7f0902d5

    .line 337
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->mMoreLinearRootLayout:Landroid/widget/RelativeLayout;

    const p1, 0x7f0902d1

    .line 338
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->mMoreLinearSellingPoint:Landroid/widget/ImageView;

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    if-ne p3, p1, :cond_1

    const p1, 0x7f0902c3

    .line 340
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->mMoreGridBackground:Landroid/widget/ImageView;

    const p1, 0x7f0902c4

    .line 341
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->mMoreGridItemIcon:Landroid/widget/ImageView;

    const p1, 0x7f0902c6

    .line 342
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->mMoreGridItemTitle:Landroid/widget/TextView;

    const p1, 0x7f0902c5

    .line 343
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->mMoreGridSellingPoint:Landroid/widget/ImageView;

    .line 345
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->initializeListener()V

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 311
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->mMoreGridItemIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 311
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->mMoreGridItemTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 311
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->mMoreGridSellingPoint:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 311
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->mMoreGridBackground:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 311
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->mMoreLinearModeIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 311
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->mMoreLinearModeTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 311
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->mMoreLinearModeDesc:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 311
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->mMoreLinearSellingPoint:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 311
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->mMoreLinearRootLayout:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;)Z
    .locals 0

    .line 311
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->mAnimFlag:Z

    return p0
.end method

.method private initializeListener()V
    .locals 4

    .line 349
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 357
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$GridListItemDragEventListener;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->this$0:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$GridListItemDragEventListener;-><init>(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 358
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method

.method private synthetic lambda$initializeListener$0(Landroid/view/View;)Z
    .locals 3

    .line 350
    invoke-static {}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->access$1300()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSecureCamera: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->this$0:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->access$1400(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->this$0:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->access$1100(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->this$0:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->access$1400(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->this$0:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->access$1100(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->this$0:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    new-instance v2, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragShadowBuilder;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {v2, p0}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragShadowBuilder;-><init>(Landroid/view/View;)V

    invoke-static {v0, v2, p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->access$1500(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;Landroid/view/View$DragShadowBuilder;Landroid/view/View;)V

    :cond_1
    :goto_0
    return v1
.end method

.method private synthetic lambda$initializeListener$1(Landroid/view/View;)V
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->this$0:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->access$1100(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->this$0:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->access$1200(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;)Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 360
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->this$0:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->access$1200(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;)Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;->onSwitchMode(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public scaleItem(F)V
    .locals 5

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    return-void

    .line 375
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    div-float v1, v0, p1

    .line 378
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->mMoreLinearContent:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setScaleX(F)V

    .line 380
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->mMoreLinearRootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v4, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->mContentLeftMargin:I

    int-to-float v4, v4

    sub-float/2addr v2, v4

    sub-float v4, p1, v0

    mul-float/2addr v2, v4

    iget-object v4, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->mMoreLinearContent:Landroid/view/View;

    .line 381
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    mul-float/2addr v4, p1

    sub-float/2addr v1, v0

    mul-float/2addr v4, v1

    add-float/2addr v2, v4

    .line 383
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->mMoreLinearContent:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method public updateAnimFlag(Z)V
    .locals 0

    .line 367
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->mAnimFlag:Z

    return-void
.end method
