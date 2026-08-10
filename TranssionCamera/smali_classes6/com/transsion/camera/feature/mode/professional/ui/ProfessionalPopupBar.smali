.class public Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;
.super Ljava/lang/Object;
.source "ProfessionalPopupBar.java"


# static fields
.field private static final DURATION:I = 0x12c

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mAlphaInterpolator:Landroid/view/animation/PathInterpolator;

.field private final mContentRoot:Landroid/view/ViewGroup;

.field private mEnable:Z

.field private final mFadeOutInterpolator:Landroid/view/animation/PathInterpolator;

.field private mHideAnimatorSet:Landroid/animation/AnimatorSet;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mScreenFormType:I

.field private mShowAnimatorSet:Landroid/animation/AnimatorSet;

.field private mStateCallback:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;


# direct methods
.method public static synthetic $r8$lambda$BHzfGcLubgUHNQLDkKaoG2kfE40(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->lambda$inflateEntryViews$1(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$s5iVa8opbFklMnSnhsR8URL1zW4(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->lambda$dismissPopup$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ProfessionalP"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/view/View;I)V
    .locals 5

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mEnable:Z

    .line 41
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 42
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const v4, 0x3f28f5c3    # 0.66f

    invoke-direct {v0, v1, v2, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    .line 43
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const v4, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v1, v2, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mFadeOutInterpolator:Landroid/view/animation/PathInterpolator;

    .line 48
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mInflater:Landroid/view/LayoutInflater;

    .line 49
    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mContentRoot:Landroid/view/ViewGroup;

    .line 50
    iput p3, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mScreenFormType:I

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;)Landroid/view/ViewGroup;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mContentRoot:Landroid/view/ViewGroup;

    return-object p0
.end method

.method private doOnDismiss(Z)V
    .locals 2

    .line 125
    iget v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mScreenFormType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 126
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/mode/professional/R$dimen;->popup_bar_item_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/mode/professional/R$dimen;->popup_bar_item_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    neg-int v0, v0

    :goto_0
    int-to-float v0, v0

    .line 130
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->startHideAnim(F)V

    .line 131
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mStateCallback:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;

    if-eqz v0, :cond_1

    .line 132
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;->onDismiss(Z)V

    :cond_1
    const/4 p1, 0x0

    .line 134
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mStateCallback:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;

    return-void
.end method

.method private inflateEntryViews(Landroid/view/LayoutInflater;Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;Ljava/lang/String;)V
    .locals 7

    if-nez p2, :cond_0

    return-void

    .line 141
    :cond_0
    invoke-virtual {p2}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 142
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 143
    sget v3, Lcom/transsion/camera/feature/mode/professional/R$layout;->pro_popup_bar_item:I

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {p1, v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    const v4, 0x3f4ccccd    # 0.8f

    const/4 v5, 0x0

    .line 144
    invoke-static {v3, v4, v5}, Lcom/transsion/camera/utils/AnimationUtils;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 145
    sget v4, Lcom/transsion/camera/feature/mode/professional/R$id;->pro_popup_bar_item_id:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 146
    invoke-virtual {p2}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aget-object v6, v6, v2

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 147
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 150
    invoke-virtual {p2, p3}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIndex(Ljava/lang/String;)I

    move-result v4

    if-ne v2, v4, :cond_1

    .line 151
    sget-object v4, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v6, " [inflateEntryViews] --> on "

    invoke-static {v4, v6}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 153
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    .line 154
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/transsion/camera/feature/mode/professional/R$drawable;->ic_popup_item_bg_on:I

    invoke-virtual {v4, v6, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 156
    :cond_1
    sget-object v4, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v6, " [inflateEntryViews] --> off "

    invoke-static {v4, v6}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 158
    invoke-virtual {v3, v1}, Landroid/view/View;->setSelected(Z)V

    .line 159
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/transsion/camera/feature/mode/professional/R$drawable;->ic_popup_item_bg_off:I

    invoke-virtual {v4, v6, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 162
    :goto_1
    new-instance v4, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, p2}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 176
    :cond_2
    iget p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mScreenFormType:I

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->updatePopupItemLayout(I)V

    return-void
.end method

.method private synthetic lambda$dismissPopup$0()V
    .locals 1

    const/4 v0, 0x1

    .line 63
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->doOnDismiss(Z)V

    return-void
.end method

.method private synthetic lambda$inflateEntryViews$1(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;Landroid/view/View;)V
    .locals 1

    .line 163
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mEnable:Z

    if-nez v0, :cond_0

    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mStateCallback:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;

    if-eqz v0, :cond_1

    .line 167
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;->onActionUp()V

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p2

    .line 170
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->updatePopupBarData(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;I)V

    .line 171
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mStateCallback:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;

    if-eqz p0, :cond_2

    .line 172
    invoke-interface {p0, p2}, Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;->onOptionIndexChanged(I)V

    :cond_2
    return-void
.end method

.method private startHideAnim(F)V
    .locals 7

    .line 231
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 232
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 234
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    .line 235
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mContentRoot:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    new-array v2, v1, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    const-string p1, "translationY"

    invoke-static {v0, p1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 237
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mContentRoot:Landroid/view/ViewGroup;

    const/4 v2, 0x2

    new-array v4, v2, [F

    fill-array-data v4, :array_0

    const-string v5, "alpha"

    invoke-static {v0, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 239
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mFadeOutInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 240
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v5, 0x12c

    invoke-virtual {v4, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v4

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object p1, v2, v3

    aput-object v0, v2, v1

    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 241
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar$1;-><init>(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 257
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private startShowAnim(F)V
    .locals 7

    .line 206
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 207
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 210
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/mode/professional/R$dimen;->popup_bar_item_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 211
    iget v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mScreenFormType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 212
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mContentRoot:Landroid/view/ViewGroup;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setY(F)V

    goto :goto_0

    .line 214
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mContentRoot:Landroid/view/ViewGroup;

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setY(F)V

    .line 216
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mContentRoot:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 218
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    .line 219
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mContentRoot:Landroid/view/ViewGroup;

    new-array v3, v2, [F

    aput p1, v3, v1

    const-string p1, "translationY"

    invoke-static {v0, p1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 221
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mContentRoot:Landroid/view/ViewGroup;

    const/4 v3, 0x2

    new-array v4, v3, [F

    fill-array-data v4, :array_0

    const-string v5, "alpha"

    invoke-static {v0, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 223
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 224
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 225
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v5, 0x64

    invoke-virtual {v4, v5, v6}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 226
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v5, 0x12c

    invoke-virtual {v4, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v4

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object p1, v3, v1

    aput-object v0, v3, v2

    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 227
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updatePopupBarData(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;I)V
    .locals 7

    .line 180
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mContentRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 181
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 183
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 184
    sget v4, Lcom/transsion/camera/feature/mode/professional/R$id;->pro_popup_bar_item_id:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 185
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 187
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 188
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/transsion/camera/feature/mode/professional/R$dimen;->popup_bar_item_width:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 189
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/transsion/camera/feature/mode/professional/R$dimen;->popup_bar_item_height:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 190
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    sget-object v4, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " [updatePopupBarData] --> selectId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " , i:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v4, 0x0

    if-ne v2, p2, :cond_0

    const/4 v5, 0x1

    .line 195
    invoke-virtual {v3, v5}, Landroid/view/View;->setSelected(Z)V

    .line 196
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/transsion/camera/feature/mode/professional/R$drawable;->ic_popup_item_bg_on:I

    invoke-virtual {v5, v6, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 198
    :cond_0
    invoke-virtual {v3, v1}, Landroid/view/View;->setSelected(Z)V

    .line 199
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/transsion/camera/feature/mode/professional/R$drawable;->ic_popup_item_bg_off:I

    invoke-virtual {v5, v6, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updatePopupItemLayout(I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    const/16 p1, 0x5a

    goto :goto_0

    :cond_0
    move p1, v1

    .line 116
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mContentRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    move v0, v1

    .line 117
    :goto_1
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 118
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v2, p1, v1}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public dismissPopup()V
    .locals 2

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mEnable:Z

    .line 62
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mContentRoot:Landroid/view/ViewGroup;

    new-instance v1, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public dismissPopupWithoutAnimation()V
    .locals 3

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mEnable:Z

    .line 69
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mContentRoot:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 70
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 71
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mContentRoot:Landroid/view/ViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mContentRoot:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setY(F)V

    .line 74
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mStateCallback:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;

    if-eqz v1, :cond_1

    .line 75
    invoke-interface {v1, v0}, Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;->onDismiss(Z)V

    :cond_1
    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mStateCallback:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;

    return-void
.end method

.method public isShowing()Z
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mContentRoot:Landroid/view/ViewGroup;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public showPopupIfNeed(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;Ljava/lang/String;Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->dismissPopup()V

    return v0

    :cond_1
    const/4 v0, 0x1

    .line 96
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mEnable:Z

    .line 97
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mStateCallback:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;

    .line 99
    sget-object p3, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, " [showPopupIfNeed] "

    invoke-static {p3, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 101
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mInflater:Landroid/view/LayoutInflater;

    invoke-direct {p0, p3, p1, p2}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->inflateEntryViews(Landroid/view/LayoutInflater;Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 103
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->startShowAnim(F)V

    .line 105
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mStateCallback:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;

    if-eqz p0, :cond_2

    .line 106
    invoke-interface {p0}, Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;->onShow()V

    :cond_2
    return v0
.end method

.method public updatePopup(I)V
    .locals 0

    .line 81
    iput p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mScreenFormType:I

    .line 82
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->updatePopupItemLayout(I)V

    return-void
.end method
