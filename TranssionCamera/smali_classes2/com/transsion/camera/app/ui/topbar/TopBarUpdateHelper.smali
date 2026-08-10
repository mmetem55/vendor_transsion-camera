.class Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;
.super Ljava/lang/Object;
.source "TopBarUpdateHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;,
        Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static mIsFirstEntry:Z


# instance fields
.field mAnimatorHelper:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;

.field mContainer:Landroid/view/ViewGroup;

.field mContainerHeight:I

.field mContainerWidth:I

.field private mUseCenterDirection:Z

.field mViewStore:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, 0x0

    .line 53
    sput-boolean v0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mIsFirstEntry:Z

    return-void
.end method

.method constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mContainer:Landroid/view/ViewGroup;

    .line 56
    new-instance p1, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;

    invoke-direct {p1}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mViewStore:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;

    .line 57
    new-instance v0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;-><init>(Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mAnimatorHelper:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;

    const/4 p0, 0x1

    .line 58
    sput-boolean p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mIsFirstEntry:Z

    return-void
.end method

.method static synthetic access$000()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 44
    sget-object v0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 44
    sget-boolean v0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mIsFirstEntry:Z

    return v0
.end method

.method private calculateIntervalTranslate(II)I
    .locals 3

    .line 173
    sget-object v0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[calculateIntervalTranslate] itemSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " itemViewSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 176
    iget v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mContainerHeight:I

    iget p0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mContainerWidth:I

    if-le v0, p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, p0

    :goto_0
    const/high16 p0, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    if-gt p1, v1, :cond_1

    sub-int/2addr v0, p2

    int-to-float p1, v0

    mul-float/2addr p1, p0

    float-to-int p0, p1

    return p0

    :cond_1
    sub-int/2addr v0, p2

    int-to-float p2, v0

    mul-float/2addr p2, p0

    float-to-int p0, p2

    sub-int/2addr p1, v1

    .line 184
    div-int/2addr p0, p1

    return p0
.end method

.method private updateShowViews(Ljava/util/Map;IZ)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;IZ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    .line 98
    iget-object v3, v0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070764

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    if-eqz v2, :cond_0

    .line 103
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v4

    invoke-direct {v0, v4, v3}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->calculateIntervalTranslate(II)I

    move-result v4

    goto :goto_0

    .line 105
    :cond_0
    iget-object v4, v0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07075d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 107
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    move v7, v6

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 108
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 109
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 110
    instance-of v10, v8, Lcom/transsion/camera/app/ui/widget/IRotatable;

    if-eqz v10, :cond_1

    const/4 v10, -0x1

    if-eq v1, v10, :cond_1

    .line 111
    move-object v10, v8

    check-cast v10, Lcom/transsion/camera/app/ui/widget/IRotatable;

    invoke-interface {v10, v1, v6}, Lcom/transsion/camera/app/ui/widget/IRotatable;->setOrientation(IZ)V

    .line 113
    :cond_1
    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    if-nez v10, :cond_2

    .line 114
    iget-object v10, v0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v10, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 116
    :cond_2
    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    iget-object v11, v0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mContainer:Landroid/view/ViewGroup;

    if-eq v10, v11, :cond_3

    .line 117
    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    invoke-virtual {v10, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 118
    iget-object v10, v0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v10, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_3
    :goto_2
    const/4 v10, 0x4

    const/4 v11, 0x1

    if-eqz v2, :cond_7

    .line 123
    iget-boolean v12, v0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mUseCenterDirection:Z

    if-eqz v12, :cond_5

    .line 124
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v11, :cond_4

    .line 125
    iget v12, v0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mContainerWidth:I

    sub-int/2addr v12, v3

    div-int/2addr v12, v13

    goto :goto_5

    .line 126
    :cond_4
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v12

    if-ne v12, v13, :cond_6

    .line 127
    iget v12, v0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mContainerWidth:I

    add-int/lit8 v13, v7, 0x1

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v11

    mul-int/2addr v12, v7

    mul-int/lit8 v7, v3, 0x2

    sub-int/2addr v12, v7

    div-int/2addr v12, v10

    move v7, v13

    goto :goto_5

    .line 132
    :cond_5
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v12

    if-ne v12, v11, :cond_6

    move v12, v4

    goto :goto_5

    :cond_6
    add-int/lit8 v12, v7, 0x1

    mul-int/2addr v7, v4

    goto :goto_4

    :cond_7
    const/16 v12, 0xb4

    if-eq v1, v12, :cond_8

    const/16 v12, 0x10e

    if-eq v1, v12, :cond_8

    add-int/lit8 v12, v7, 0x1

    :goto_3
    add-int v13, v3, v4

    mul-int/2addr v7, v13

    :goto_4
    move/from16 v16, v12

    move v12, v7

    move/from16 v7, v16

    goto :goto_5

    :cond_8
    add-int/lit8 v12, v7, 0x1

    rsub-int/lit8 v7, v7, 0x5

    goto :goto_3

    .line 152
    :goto_5
    sget-object v13, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[updateShowViews] orientation: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", needDivideEqually: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, ", curTranslate: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 154
    iget-object v13, v0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mViewStore:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;

    invoke-virtual {v13, v9, v12, v11, v10}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;->update(Ljava/lang/String;III)V

    .line 156
    iget-object v10, v0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    if-lez v10, :cond_9

    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v10

    if-lez v10, :cond_9

    move v10, v11

    goto :goto_6

    :cond_9
    move v10, v6

    :goto_6
    if-eqz v10, :cond_b

    .line 158
    iget-object v10, v0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mAnimatorHelper:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;

    iget v12, v0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mContainerWidth:I

    iget v13, v0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mContainerHeight:I

    if-le v12, v13, :cond_a

    goto :goto_7

    :cond_a
    move v11, v6

    :goto_7
    invoke-virtual {v10, v9, v8, v11}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;->animator(Ljava/lang/String;Landroid/view/View;Z)V

    goto :goto_9

    .line 160
    :cond_b
    iget-object v10, v0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mAnimatorHelper:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;

    iget v12, v0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mContainerWidth:I

    iget v13, v0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mContainerHeight:I

    if-le v12, v13, :cond_c

    goto :goto_8

    :cond_c
    move v11, v6

    :goto_8
    invoke-virtual {v10, v9, v8, v11}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;->withoutAnimator(Ljava/lang/String;Landroid/view/View;Z)V

    .line 163
    :goto_9
    iget-object v10, v0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mViewStore:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;

    invoke-virtual {v10, v9}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;->getView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_d

    if-eq v10, v8, :cond_d

    .line 165
    iget-object v11, v0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v11, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 167
    :cond_d
    iget-object v10, v0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mViewStore:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;

    invoke-virtual {v10, v9, v8}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;->cacheView(Ljava/lang/String;Landroid/view/View;)V

    goto/16 :goto_1

    .line 169
    :cond_e
    sput-boolean v6, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mIsFirstEntry:Z

    return-void
.end method


# virtual methods
.method setContainerWidthAndHeight(II)V
    .locals 3

    .line 66
    sget-object v0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setContainerWidthAndHeight] containerWidth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", containerHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 67
    iput p1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mContainerWidth:I

    .line 68
    iput p2, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mContainerHeight:I

    return-void
.end method

.method update(Ljava/util/Map;IZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;IZ)V"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mViewStore:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;->updateStart()V

    .line 74
    iget-object v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mAnimatorHelper:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;->animatorStart()V

    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->updateShowViews(Ljava/util/Map;IZ)V

    .line 80
    iget-object p1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mViewStore:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;->updateEnd()Ljava/util/List;

    move-result-object p1

    .line 81
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_0

    .line 82
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/view/View;

    .line 83
    iget-object v1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mAnimatorHelper:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    new-instance v7, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$1;

    invoke-direct {v7, p0, v2}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$1;-><init>(Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;Landroid/view/View;)V

    invoke-virtual/range {v1 .. v7}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;->addShowOrHideAnimatorSet(Landroid/view/View;FFFFLandroid/animation/AnimatorListenerAdapter;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 94
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mAnimatorHelper:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorHelper;->animatorEnd()V

    return-void
.end method
