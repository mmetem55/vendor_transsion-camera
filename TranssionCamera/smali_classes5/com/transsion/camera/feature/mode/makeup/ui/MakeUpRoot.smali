.class public Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;
.super Landroid/widget/FrameLayout;
.source "MakeUpRoot.java"

# interfaces
.implements Lcom/transsion/camera/feature/mode/makeup/ui/interactive/IFeature;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

.field private final mEffectDataManager:Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;

.field private mEffectGroup:Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

.field private mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

.field protected mIsVipMode:Z

.field private mMakeUpAdapter:Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;

.field private mMakeUpHelper:Lcom/transsion/camera/feature/mode/makeup/helper/MakeUpHelper;

.field private mMakeUpRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mMakeUpSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mOrientation:I

.field private mScreenFormType:I

.field private mScrollHelper:Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;


# direct methods
.method public static synthetic $r8$lambda$FlyEVa2ysE5jGZKclmRm7cP0cWI(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->lambda$showDialog$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$XM-YroR6HooTtbEHGgH1bQqYCrA(Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->lambda$showDialog$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$k438j3AdsEddy4KXShdPsd4w--k(Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->lambda$registerSettingDevice$2(Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 46
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 133
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 48
    iput p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mScreenFormType:I

    .line 49
    iput p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mOrientation:I

    .line 134
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mContext:Landroid/content/Context;

    .line 135
    new-instance p1, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;

    invoke-direct {p1}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mEffectDataManager:Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;

    return-void
.end method

.method private allowResponseItemClick()Z
    .locals 2

    .line 217
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 220
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    if-nez p0, :cond_1

    return v1

    .line 224
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private handleMakeUpItemSelected(Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;)V
    .locals 12

    if-eqz p1, :cond_4

    .line 65
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpHelper:Lcom/transsion/camera/feature/mode/makeup/helper/MakeUpHelper;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x2

    new-array v7, v0, [F

    .line 69
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->getIntensityArray()[F

    move-result-object v1

    const/4 v8, 0x0

    aget v1, v1, v8

    aput v1, v7, v8

    .line 70
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->getIntensityArray()[F

    move-result-object v1

    const/4 v9, 0x1

    aget v1, v1, v9

    aput v1, v7, v9

    .line 72
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->getNode()Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 73
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->getNode()Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;->getTag()Ljava/lang/String;

    move-result-object v6

    .line 74
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->getNode()Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;->getKeyArray()[Ljava/lang/String;

    move-result-object v5

    .line 75
    invoke-static {v4}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getIndexByPath(Ljava/lang/String;)I

    move-result v3

    aget v1, v7, v9

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 77
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 78
    iget-object v10, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpHelper:Lcom/transsion/camera/feature/mode/makeup/helper/MakeUpHelper;

    invoke-virtual {v10, v4, v1}, Lcom/transsion/camera/feature/mode/makeup/helper/MakeUpHelper;->getIntensity(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    int-to-float v1, v10

    div-float/2addr v1, v2

    aput v1, v7, v9

    .line 80
    new-instance v11, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;

    const/4 v2, 0x0

    move-object v1, v11

    invoke-direct/range {v1 .. v7}, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;-><init>(ZILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[F)V

    .line 82
    invoke-static {v11}, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->toJson(Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;)Ljava/lang/String;

    move-result-object v1

    .line 83
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    if-eqz v2, :cond_3

    sget-boolean v2, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->isPressBack:Z

    if-nez v2, :cond_3

    .line 84
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->getId()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 85
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    invoke-interface {p1, v9, v8}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifyState(IZ)V

    .line 86
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    invoke-interface {p1, v0, v8}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifySelect(IZ)V

    goto :goto_0

    .line 87
    :cond_1
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->getId()I

    move-result p1

    const/16 v2, 0xb

    if-ne p1, v2, :cond_2

    .line 88
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    const/4 v2, 0x3

    invoke-interface {p1, v2, v8}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifyState(IZ)V

    .line 89
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    invoke-interface {p1, v0, v9}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifySelect(IZ)V

    goto :goto_0

    .line 91
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    invoke-interface {p1, v0, v8}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifyState(IZ)V

    .line 92
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    const/16 v2, 0x64

    invoke-interface {p1, v2, v8, v8, v10}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifyProgress(IIII)V

    .line 93
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    invoke-interface {p1, v0, v9}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifySelect(IZ)V

    .line 96
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private synthetic lambda$registerSettingDevice$2(Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;I)V
    .locals 2

    .line 191
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->allowResponseItemClick()Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    sget-object p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "ignore item click event!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 195
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->getId()I

    move-result v0

    const/high16 v1, 0x70000

    if-ne v0, v1, :cond_1

    .line 196
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->showDialog()V

    return-void

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpAdapter:Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;

    if-eqz v0, :cond_2

    .line 200
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mEffectGroup:Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->setSelectChild(Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;)V

    .line 201
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpAdapter:Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;

    invoke-virtual {v0, p2}, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->setSelect(I)V

    .line 202
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->handleMakeUpItemSelected(Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;)V

    :cond_2
    return-void
.end method

.method private static synthetic lambda$showDialog$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 107
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private synthetic lambda$showDialog$1(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 109
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 110
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->updateDataStoreResetValue()V

    return-void
.end method

.method private showDialog()V
    .locals 3

    .line 100
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 104
    :cond_0
    new-instance v0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, ""

    .line 105
    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/makeup/R$string;->multi_face_beauty_dailog_message:I

    .line 106
    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setMessage(I)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/makeup/R$string;->multi_face_beauty_dailog_negative_title:I

    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot$$ExternalSyntheticLambda1;-><init>()V

    .line 107
    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/makeup/R$string;->multi_face_beauty_dailog_Positive_title:I

    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;)V

    .line 108
    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->create()Lcom/transsion/widgetslib/dialog/PromptDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    .line 113
    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/PromptDialog;->show()V

    return-void
.end method

.method private updateDataStoreResetValue()V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpHelper:Lcom/transsion/camera/feature/mode/makeup/helper/MakeUpHelper;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpAdapter:Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;

    if-eqz v1, :cond_0

    .line 124
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/makeup/helper/MakeUpHelper;->restoreIntensity()V

    .line 125
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpAdapter:Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->updateIntensityDefault(Z)V

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mEffectGroup:Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->getSelectChild()Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    move-result-object v0

    .line 128
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->handleMakeUpItemSelected(Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;)V

    .line 129
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setClickIconId(I)V

    return-void
.end method

.method private updateSelectedItem(Ljava/lang/String;)V
    .locals 7

    .line 139
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpAdapter:Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mEffectGroup:Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpHelper:Lcom/transsion/camera/feature/mode/makeup/helper/MakeUpHelper;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 143
    :cond_0
    invoke-static {p1}, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->toObject(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 145
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpAdapter:Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->getSelect()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;->getItem(I)Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 146
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    .line 149
    :goto_0
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpAdapter:Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 150
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpAdapter:Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;

    invoke-virtual {v2, v1}, Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;->getItem(I)Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    move-result-object v2

    .line 151
    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->getNode()Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_1

    .line 154
    :cond_2
    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->getNode()Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;->getPath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->path:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 155
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpAdapter:Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;

    invoke-virtual {v3, v1}, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->setSelect(I)V

    .line 156
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mEffectGroup:Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->setSelectChild(Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;)V

    .line 157
    iget-object v1, p1, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->path:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_3

    .line 158
    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->getIntensityArray()[F

    move-result-object v1

    aget v1, v1, v3

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v1, v4

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 159
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpHelper:Lcom/transsion/camera/feature/mode/makeup/helper/MakeUpHelper;

    iget-object v6, p1, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->path:Ljava/lang/String;

    invoke-virtual {v5, v6, v1}, Lcom/transsion/camera/feature/mode/makeup/helper/MakeUpHelper;->getIntensity(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 160
    iget-object v5, p1, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->intensityArray:[F

    aget v6, v5, v3

    mul-float/2addr v6, v4

    float-to-int v6, v6

    if-eq v1, v6, :cond_3

    int-to-float v1, v1

    div-float/2addr v1, v4

    .line 161
    aput v1, v5, v3

    .line 162
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-static {p1}, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->toJson(Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 165
    :cond_3
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    if-eqz p0, :cond_6

    const/4 p1, 0x2

    .line 167
    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->getId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    move v0, v3

    .line 166
    :cond_4
    invoke-interface {p0, p1, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifySelect(IZ)V

    goto :goto_2

    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    :goto_2
    return-void
.end method

.method private updateState()V
    .locals 7

    .line 242
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpAdapter:Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->getSelect()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;->getItem(I)Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 243
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpHelper:Lcom/transsion/camera/feature/mode/makeup/helper/MakeUpHelper;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v1, :cond_2

    .line 244
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    if-eqz v1, :cond_2

    .line 245
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->getIntensityArray()[F

    move-result-object v1

    const/4 v2, 0x1

    aget v1, v1, v2

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    .line 246
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 247
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->getNode()Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 248
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpHelper:Lcom/transsion/camera/feature/mode/makeup/helper/MakeUpHelper;

    invoke-virtual {v4, v3, v1}, Lcom/transsion/camera/feature/mode/makeup/helper/MakeUpHelper;->getIntensity(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 249
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->getId()I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-ne v3, v4, :cond_0

    .line 250
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    invoke-interface {v0, v2, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifyState(IZ)V

    .line 251
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    invoke-interface {p0, v6, v5}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifySelect(IZ)V

    goto :goto_0

    .line 252
    :cond_0
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->getId()I

    move-result v0

    const/16 v3, 0xb

    if-ne v0, v3, :cond_1

    .line 253
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    const/4 v1, 0x3

    invoke-interface {v0, v1, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifyState(IZ)V

    .line 254
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    invoke-interface {p0, v6, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifySelect(IZ)V

    goto :goto_0

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    invoke-interface {v0, v6, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifyState(IZ)V

    .line 257
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    const/16 v3, 0x64

    invoke-interface {v0, v3, v5, v5, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifyProgress(IIII)V

    .line 258
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    invoke-interface {p0, v6, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifySelect(IZ)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public closeContrast(Z)V
    .locals 8

    .line 332
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_0

    .line 333
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    .line 334
    invoke-static {p1}, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->toObject(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 336
    new-instance v7, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;

    const/4 v1, 0x0

    iget v2, p1, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->styleNumber:I

    iget-object v3, p1, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->path:Ljava/lang/String;

    iget-object v4, p1, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->keyArray:[Ljava/lang/String;

    iget-object v5, p1, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->tag:Ljava/lang/String;

    iget-object v6, p1, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->intensityArray:[F

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;-><init>(ZILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[F)V

    .line 338
    invoke-static {v7}, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->toJson(Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;)Ljava/lang/String;

    move-result-object p1

    .line 339
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public hideDialog()V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 361
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 362
    sget v0, Lcom/transsion/camera/feature/makeup/R$id;->makeup_rv:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 363
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 364
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 365
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 366
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/SimpleItemDecoration;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/SimpleItemDecoration;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method public openContrast()V
    .locals 9

    .line 317
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_0

    .line 318
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    .line 319
    invoke-static {v0}, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->toObject(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 321
    new-instance v8, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;

    const/4 v2, 0x1

    iget v3, v0, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->styleNumber:I

    iget-object v4, v0, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->path:Ljava/lang/String;

    iget-object v5, v0, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->keyArray:[Ljava/lang/String;

    iget-object v6, v0, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->tag:Ljava/lang/String;

    iget-object v7, v0, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->intensityArray:[F

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;-><init>(ZILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[F)V

    .line 324
    invoke-static {v8}, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->toJson(Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;)Ljava/lang/String;

    move-result-object v0

    .line 325
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public progressChanged(I)V
    .locals 4

    int-to-float v0, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    .line 273
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpHelper:Lcom/transsion/camera/feature/mode/makeup/helper/MakeUpHelper;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v1, :cond_1

    .line 274
    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v1

    .line 275
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 276
    invoke-static {v1}, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->toObject(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 278
    iget-object v2, v1, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->intensityArray:[F

    const/4 v3, 0x1

    aput v0, v2, v3

    .line 279
    invoke-static {v1}, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->toJson(Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;)Ljava/lang/String;

    move-result-object v0

    .line 280
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v2, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpHelper:Lcom/transsion/camera/feature/mode/makeup/helper/MakeUpHelper;

    iget-object v1, v1, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->path:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/transsion/camera/feature/mode/makeup/helper/MakeUpHelper;->updateIntensity(Ljava/lang/String;I)V

    const-string v0, "60"

    .line 283
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 284
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpAdapter:Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpHelper:Lcom/transsion/camera/feature/mode/makeup/helper/MakeUpHelper;

    .line 285
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/helper/MakeUpHelper;->allDefaultIntensity()Z

    move-result p0

    .line 284
    invoke-virtual {p1, p0}, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->updateIntensityDefault(Z)V

    goto :goto_0

    .line 287
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpAdapter:Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->updateIntensityDefault(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public registerSettingDevice(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 4

    .line 177
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->isVIPSelfieMode(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mIsVipMode:Z

    if-nez p1, :cond_0

    return-void

    .line 181
    :cond_0
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 182
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mEffectDataManager:Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;

    .line 183
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sget v2, Lcom/transsion/camera/utils/AreaUtil;->AREA_CODE:I

    sget-object v3, Lcom/transsion/camera/feature/mode/makeup/data/EffectType;->LIVE_ASIA:Lcom/transsion/camera/feature/mode/makeup/data/EffectType;

    .line 182
    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->getItem(IILcom/transsion/camera/feature/mode/makeup/data/EffectType;)Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mEffectGroup:Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    .line 184
    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/helper/MakeUpHelper;

    invoke-direct {v1, p1, v0}, Lcom/transsion/camera/feature/mode/makeup/helper/MakeUpHelper;-><init>(Lcom/transsion/camera/app/common/setting/ISetting;Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpHelper:Lcom/transsion/camera/feature/mode/makeup/helper/MakeUpHelper;

    .line 185
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mEffectGroup:Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->getChildren()[Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 186
    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpAdapter:Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;

    .line 187
    iget v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mScreenFormType:I

    invoke-virtual {v1, v0}, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->updateScreenFormType(I)V

    .line 188
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpAdapter:Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpHelper:Lcom/transsion/camera/feature/mode/makeup/helper/MakeUpHelper;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/makeup/helper/MakeUpHelper;->allDefaultIntensity()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->updateIntensityDefault(Z)V

    .line 189
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpAdapter:Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 190
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpAdapter:Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;

    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;->setListener(Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter$OnItemClickListener;)V

    .line 205
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    .line 206
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->updateSelectedItem(Ljava/lang/String;)V

    .line 207
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot$1;

    invoke-direct {v0, p0, p1, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot$1;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;Lcom/transsion/camera/app/common/setting/ISetting;Lcom/transsion/camera/app/common/setting/ISetting;)V

    invoke-static {v0}, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->of(Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$IStoreStrategy;)Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mScrollHelper:Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;

    .line 213
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public releaseResource()V
    .locals 4

    .line 370
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    .line 371
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 372
    :goto_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 373
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 375
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;

    .line 376
    iget-object v2, v2, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;->iv:Landroid/widget/ImageView;

    .line 377
    invoke-static {v2}, Lcom/transsion/camera/utils/BitmapUtils;->releaseBitmap(Landroid/widget/ImageView;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public resetUI()V
    .locals 0

    .line 228
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mScrollHelper:Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;

    if-eqz p0, :cond_0

    .line 229
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->resetScrollPosition()V

    :cond_0
    return-void
.end method

.method public setUIInterface(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;)V
    .locals 0

    .line 267
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    return-void
.end method

.method public unregisterSettingDevice(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    .line 235
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->hideDialog()V

    const/4 p1, 0x0

    .line 236
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    .line 237
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 238
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mEffectGroup:Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    return-void
.end method

.method public updateFeatureUI(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 347
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->updateState()V

    const/4 p1, 0x0

    .line 348
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 350
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public updateLayout(II)V
    .locals 2

    .line 295
    iget v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mScreenFormType:I

    if-eq v0, p1, :cond_0

    .line 299
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mIsVipMode:Z

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/transsion/camera/utils/CameraUtil;->isVIPSelfieMode(Landroid/content/Context;)Z

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mScrollHelper:Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;

    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->onScreenFormChanged(I)V

    .line 308
    :cond_0
    iput p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mOrientation:I

    .line 309
    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mScreenFormType:I

    .line 310
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->mMakeUpAdapter:Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;

    if-eqz p0, :cond_1

    .line 311
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter;->updateScreenFormType(I)V

    :cond_1
    return-void
.end method

.method public updateValueChange(Ljava/lang/String;)V
    .locals 0

    .line 356
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->updateSelectedItem(Ljava/lang/String;)V

    return-void
.end method
