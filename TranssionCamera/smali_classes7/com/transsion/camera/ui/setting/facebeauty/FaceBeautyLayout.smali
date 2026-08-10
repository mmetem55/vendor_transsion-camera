.class public Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLayout;
.super Landroid/widget/RelativeLayout;
.source "FaceBeautyLayout.java"


# static fields
.field private static final SUPPORT_DRAWABLE_RES_IDS:[I

.field private static final SUPPORT_DRAWABLE_RES_IDS_LOW_LIGHT:[I

.field private static final SUPPORT_EFFECT_IDS:[Ljava/lang/String;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAdapter:Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter;

.field private mCurrValue:Ljava/lang/String;

.field private mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mOnItemClickListener:Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter$OnItemClickListener;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 20
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "FaceBeautyRoot"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLayout;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "ai"

    const-string v3, "1"

    const-string v4, "2"

    const-string v5, "3"

    const-string v6, "4"

    const-string v7, "5"

    const-string v8, "6"

    .line 37
    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLayout;->SUPPORT_EFFECT_IDS:[Ljava/lang/String;

    const/4 v0, 0x7

    new-array v1, v0, [I

    .line 41
    fill-array-data v1, :array_0

    sput-object v1, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLayout;->SUPPORT_DRAWABLE_RES_IDS:[I

    new-array v0, v0, [I

    .line 48
    fill-array-data v0, :array_1

    sput-object v0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLayout;->SUPPORT_DRAWABLE_RES_IDS_LOW_LIGHT:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0803d3
        0x7f0803b7
        0x7f0803b9
        0x7f0803bb
        0x7f0803bd
        0x7f0803bf
        0x7f0803c1
    .end array-data

    :array_1
    .array-data 4
        0x7f0803d4
        0x7f0803b8
        0x7f0803ba
        0x7f0803bc
        0x7f0803be
        0x7f0803c0
        0x7f0803c2
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 118
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance p1, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLayout$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLayout$1;-><init>(Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLayout;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLayout;->mOnItemClickListener:Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter$OnItemClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 122
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    new-instance p1, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLayout$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLayout$1;-><init>(Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLayout;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLayout;->mOnItemClickListener:Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLayout;)Lcom/transsion/camera/app/common/setting/ISetting;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLayout;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    return-object p0
.end method

.method private isSupport(Ljava/util/List;Ljava/lang/String;)Z
    .locals 1
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

    const/4 p0, 0x0

    if-eqz p1, :cond_2

    .line 67
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 70
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 71
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return p0
.end method


# virtual methods
.method public buildDataList(Z)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/transsion/camera/ui/setting/facebeauty/FaceItemData;",
            ">;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLayout;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSupport()Ljava/util/List;

    move-result-object v0

    .line 101
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 102
    :goto_0
    sget-object v3, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLayout;->SUPPORT_EFFECT_IDS:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 103
    aget-object v3, v3, v2

    .line 104
    invoke-direct {p0, v0, v3}, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLayout;->isSupport(Ljava/util/List;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 105
    new-instance v4, Lcom/transsion/camera/ui/setting/facebeauty/FaceItemData;

    invoke-direct {v4}, Lcom/transsion/camera/ui/setting/facebeauty/FaceItemData;-><init>()V

    if-eqz p1, :cond_0

    .line 106
    sget-object v5, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLayout;->SUPPORT_DRAWABLE_RES_IDS_LOW_LIGHT:[I

    aget v5, v5, v2

    goto :goto_1

    :cond_0
    sget-object v5, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLayout;->SUPPORT_DRAWABLE_RES_IDS:[I

    aget v5, v5, v2

    :goto_1
    iput v5, v4, Lcom/transsion/camera/ui/setting/facebeauty/FaceItemData;->drawableId:I

    .line 107
    iput-object v3, v4, Lcom/transsion/camera/ui/setting/facebeauty/FaceItemData;->effectId:Ljava/lang/String;

    .line 108
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public notifyListDataChange(Z)V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLayout;->mAdapter:Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter;

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLayout;->buildDataList(Z)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter;->setList(Ljava/util/List;)V

    .line 95
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLayout;->mAdapter:Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 127
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f09018b

    .line 128
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLayout;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 129
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;Z)V
    .locals 2

    .line 79
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLayout;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 80
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLayout;->mCurrValue:Ljava/lang/String;

    .line 81
    sget-object p1, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLayout;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDeviceSetting mCurrValue = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLayout;->mCurrValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0, p2}, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLayout;->buildDataList(Z)Ljava/util/List;

    move-result-object p1

    .line 83
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 84
    new-instance p2, Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter;

    invoke-direct {p2, p1}, Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter;-><init>(Ljava/util/List;)V

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLayout;->mAdapter:Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter;

    .line 85
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLayout;->mOnItemClickListener:Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter$OnItemClickListener;

    invoke-virtual {p2, p1}, Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter;->setOnItemClickListener(Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter$OnItemClickListener;)V

    .line 86
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLayout;->mAdapter:Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter;

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLayout;->mCurrValue:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter;->setSelectedItemById(Ljava/lang/String;)V

    .line 87
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLayout;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLayout;->mAdapter:Lcom/transsion/camera/ui/setting/facebeauty/FBAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 88
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLayout;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    :cond_0
    return-void
.end method
