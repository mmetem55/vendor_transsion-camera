.class public Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;
.super Landroid/widget/RelativeLayout;
.source "FaceBeautyRoot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot$PaddingItemDecoration;
    }
.end annotation


# static fields
.field private static final SUPPORT_DRAWABLE_RES_IDS:[I

.field private static final SUPPORT_DRAWABLE_RES_IDS_LOW_LIGHT:[I

.field private static final SUPPORT_EFFECT_IDS:[Ljava/lang/String;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAdapter:Lcom/transsion/camera/feature/slimbody/adapter/FaceBeautyAdapter;

.field private mCurrValue:Ljava/lang/String;

.field private mPaddingItemDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 24
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "FaceBeautyRoot"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "off"

    const-string v3, "ai"

    const-string v4, "1"

    const-string v5, "2"

    const-string v6, "3"

    const-string v7, "4"

    const-string v8, "5"

    const-string v9, "6"

    .line 30
    filled-new-array/range {v2 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;->SUPPORT_EFFECT_IDS:[Ljava/lang/String;

    const/16 v0, 0x8

    new-array v1, v0, [I

    .line 34
    sget v2, Lcom/transsion/camera/feature/slimbody/R$drawable;->btn_face_beauty_level_off:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lcom/transsion/camera/feature/slimbody/R$drawable;->btn_face_beauty_level_ai:I

    const/4 v4, 0x1

    aput v2, v1, v4

    sget v2, Lcom/transsion/camera/feature/slimbody/R$drawable;->btn_face_beauty_level_1:I

    const/4 v5, 0x2

    aput v2, v1, v5

    sget v2, Lcom/transsion/camera/feature/slimbody/R$drawable;->btn_face_beauty_level_2:I

    const/4 v6, 0x3

    aput v2, v1, v6

    sget v2, Lcom/transsion/camera/feature/slimbody/R$drawable;->btn_face_beauty_level_3:I

    const/4 v7, 0x4

    aput v2, v1, v7

    sget v2, Lcom/transsion/camera/feature/slimbody/R$drawable;->btn_face_beauty_level_4:I

    const/4 v8, 0x5

    aput v2, v1, v8

    sget v2, Lcom/transsion/camera/feature/slimbody/R$drawable;->btn_face_beauty_level_5:I

    const/4 v9, 0x6

    aput v2, v1, v9

    sget v2, Lcom/transsion/camera/feature/slimbody/R$drawable;->btn_face_beauty_level_6:I

    const/4 v10, 0x7

    aput v2, v1, v10

    sput-object v1, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;->SUPPORT_DRAWABLE_RES_IDS:[I

    new-array v0, v0, [I

    .line 42
    sget v1, Lcom/transsion/camera/feature/slimbody/R$drawable;->btn_face_beauty_level_off_black:I

    aput v1, v0, v3

    sget v1, Lcom/transsion/camera/feature/slimbody/R$drawable;->btn_face_beauty_level_ai_black:I

    aput v1, v0, v4

    sget v1, Lcom/transsion/camera/feature/slimbody/R$drawable;->btn_face_beauty_level_1_black:I

    aput v1, v0, v5

    sget v1, Lcom/transsion/camera/feature/slimbody/R$drawable;->btn_face_beauty_level_2_black:I

    aput v1, v0, v6

    sget v1, Lcom/transsion/camera/feature/slimbody/R$drawable;->btn_face_beauty_level_3_black:I

    aput v1, v0, v7

    sget v1, Lcom/transsion/camera/feature/slimbody/R$drawable;->btn_face_beauty_level_4_black:I

    aput v1, v0, v8

    sget v1, Lcom/transsion/camera/feature/slimbody/R$drawable;->btn_face_beauty_level_5_black:I

    aput v1, v0, v9

    sget v1, Lcom/transsion/camera/feature/slimbody/R$drawable;->btn_face_beauty_level_6_black:I

    aput v1, v0, v10

    sput-object v0, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;->SUPPORT_DRAWABLE_RES_IDS_LOW_LIGHT:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 107
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 111
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private isSupport(Ljava/util/List;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 70
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public notifyValueChangedToUI(Ljava/lang/String;)V
    .locals 2

    .line 51
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;->mCurrValue:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;->mCurrValue:Ljava/lang/String;

    .line 53
    sget-object p1, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyValueChangedToUI mCurrValue = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;->mCurrValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 54
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;->mAdapter:Lcom/transsion/camera/feature/slimbody/adapter/FaceBeautyAdapter;

    if-eqz p1, :cond_0

    .line 55
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;->mCurrValue:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/feature/slimbody/adapter/FaceBeautyAdapter;->setSelectedItemById(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 116
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 117
    sget v0, Lcom/transsion/camera/feature/slimbody/R$id;->fb_list:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 118
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public setItemPadding(II)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;->mPaddingItemDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot$PaddingItemDecoration;

    invoke-direct {v0, p1, p2}, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot$PaddingItemDecoration;-><init>(II)V

    iput-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;->mPaddingItemDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 63
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    .line 64
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    :cond_0
    return-void
.end method

.method public updateAdapter(Ljava/util/List;Ljava/lang/String;Lcom/transsion/camera/feature/slimbody/adapter/FaceBeautyAdapter$OnItemClickListener;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/transsion/camera/feature/slimbody/adapter/FaceBeautyAdapter$OnItemClickListener;",
            "Z)V"
        }
    .end annotation

    .line 79
    iput-object p2, p0, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;->mCurrValue:Ljava/lang/String;

    .line 80
    sget-object p2, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateAdapter mCurrValue = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;->mCurrValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 81
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    .line 82
    :goto_0
    sget-object v2, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;->SUPPORT_EFFECT_IDS:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 83
    aget-object v2, v2, v1

    .line 84
    invoke-direct {p0, p1, v2}, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;->isSupport(Ljava/util/List;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 85
    new-instance v3, Lcom/transsion/camera/feature/slimbody/data/FBItemData;

    invoke-direct {v3}, Lcom/transsion/camera/feature/slimbody/data/FBItemData;-><init>()V

    if-eqz p4, :cond_0

    .line 86
    sget-object v4, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;->SUPPORT_DRAWABLE_RES_IDS_LOW_LIGHT:[I

    aget v4, v4, v1

    goto :goto_1

    :cond_0
    sget-object v4, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;->SUPPORT_DRAWABLE_RES_IDS:[I

    aget v4, v4, v1

    :goto_1
    iput v4, v3, Lcom/transsion/camera/feature/slimbody/data/FBItemData;->drawableId:I

    .line 87
    iput-object v2, v3, Lcom/transsion/camera/feature/slimbody/data/FBItemData;->effectId:Ljava/lang/String;

    .line 88
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 92
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;->mAdapter:Lcom/transsion/camera/feature/slimbody/adapter/FaceBeautyAdapter;

    if-nez p1, :cond_3

    .line 93
    new-instance p1, Lcom/transsion/camera/feature/slimbody/adapter/FaceBeautyAdapter;

    invoke-direct {p1, p2}, Lcom/transsion/camera/feature/slimbody/adapter/FaceBeautyAdapter;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;->mAdapter:Lcom/transsion/camera/feature/slimbody/adapter/FaceBeautyAdapter;

    .line 94
    invoke-virtual {p1, p3}, Lcom/transsion/camera/feature/slimbody/adapter/FaceBeautyAdapter;->setOnItemClickListener(Lcom/transsion/camera/feature/slimbody/adapter/FaceBeautyAdapter$OnItemClickListener;)V

    .line 95
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;->mAdapter:Lcom/transsion/camera/feature/slimbody/adapter/FaceBeautyAdapter;

    iget-object p2, p0, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;->mCurrValue:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/slimbody/adapter/FaceBeautyAdapter;->setSelectedItemById(Ljava/lang/String;)V

    .line 96
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;->mAdapter:Lcom/transsion/camera/feature/slimbody/adapter/FaceBeautyAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 97
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setFocusable(Z)V

    goto :goto_2

    .line 99
    :cond_3
    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/slimbody/adapter/FaceBeautyAdapter;->updateList(Ljava/util/List;)V

    .line 100
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;->mAdapter:Lcom/transsion/camera/feature/slimbody/adapter/FaceBeautyAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_4
    :goto_2
    return-void
.end method
