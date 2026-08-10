.class public final Lcom/transsion/widgetslib/dialog/PromptParams;
.super Ljava/lang/Object;
.source "PromptParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/dialog/PromptParams$OnPrepareListViewListener;
    }
.end annotation


# instance fields
.field public mAdapter:Landroid/widget/ListAdapter;

.field public mAutoDismiss:Z

.field public mCancelOutSide:Z

.field public mCancelable:Z

.field public mCheckedItem:I

.field public mCheckedItems:[Z

.field public final mContext:Landroid/content/Context;

.field public mCursor:Landroid/database/Cursor;

.field public mElegant:Z

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mIsAlert:Z

.field public mIsAppDialogFragment:Z

.field public mIsButtonVertical:Z

.field public mIsCheckedColumn:Ljava/lang/String;

.field public mIsInputDialog:Z

.field public mIsMultiChoice:Z

.field public mIsSingleChecked:Z

.field public mIsSingleChoice:Z

.field public mItems:[Ljava/lang/CharSequence;

.field public mLabelColumn:Ljava/lang/String;

.field public mMessage:Ljava/lang/CharSequence;

.field public mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNegativeButtonText:Ljava/lang/CharSequence;

.field public mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNeutralButtonText:Ljava/lang/CharSequence;

.field public mNoBtnInsets:I

.field public mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field public mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field public mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field public mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field public mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field public mOnPrepareListViewListener:Lcom/transsion/widgetslib/dialog/PromptParams$OnPrepareListViewListener;

.field public mPositiveButtonEnable:Z

.field public mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mPositiveButtonText:Ljava/lang/CharSequence;

.field public mRecyclerAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;"
        }
    .end annotation
.end field

.field public mSingleCheckedText:Ljava/lang/CharSequence;

.field public mTitle:Ljava/lang/CharSequence;

.field public mTopTitle:Ljava/lang/CharSequence;

.field public mView:Landroid/view/View;

.field public mViewLayoutResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/transsion/widgetslib/dialog/PromptParams;->mPositiveButtonEnable:Z

    const/4 v1, -0x1

    .line 45
    iput v1, p0, Lcom/transsion/widgetslib/dialog/PromptParams;->mCheckedItem:I

    .line 52
    iput-boolean v0, p0, Lcom/transsion/widgetslib/dialog/PromptParams;->mAutoDismiss:Z

    .line 57
    iput-boolean v0, p0, Lcom/transsion/widgetslib/dialog/PromptParams;->mElegant:Z

    .line 62
    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptParams;->mContext:Landroid/content/Context;

    .line 63
    iput-boolean v0, p0, Lcom/transsion/widgetslib/dialog/PromptParams;->mCancelable:Z

    .line 64
    iput-boolean v0, p0, Lcom/transsion/widgetslib/dialog/PromptParams;->mCancelOutSide:Z

    return-void
.end method


# virtual methods
.method public apply(Lcom/transsion/widgetslib/dialog/PromptController;)V
    .locals 4

    .line 68
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptParams;->mTopTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/transsion/widgetslib/dialog/PromptController;->setTopTitle(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/transsion/widgetslib/dialog/PromptController;->setTitleView(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptParams;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/transsion/widgetslib/dialog/PromptController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 71
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptParams;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/transsion/widgetslib/dialog/PromptController;->setMessageView(Ljava/lang/CharSequence;)V

    .line 72
    iget v0, p0, Lcom/transsion/widgetslib/dialog/PromptParams;->mViewLayoutResId:I

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptParams;->mView:Landroid/view/View;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/widgetslib/dialog/PromptController;->setView(ILandroid/view/View;)V

    .line 73
    iget-boolean v0, p0, Lcom/transsion/widgetslib/dialog/PromptParams;->mIsAlert:Z

    invoke-virtual {p1, v0}, Lcom/transsion/widgetslib/dialog/PromptController;->setIsAlert(Z)V

    .line 74
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v0, v1, v3}, Lcom/transsion/widgetslib/dialog/PromptController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 76
    iget-boolean v0, p0, Lcom/transsion/widgetslib/dialog/PromptParams;->mPositiveButtonEnable:Z

    invoke-virtual {p1, v0}, Lcom/transsion/widgetslib/dialog/PromptController;->setPositiveButtonEnable(Z)V

    .line 77
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v2, -0x2

    invoke-virtual {p1, v2, v0, v1, v3}, Lcom/transsion/widgetslib/dialog/PromptController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 79
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v2, -0x3

    invoke-virtual {p1, v2, v0, v1, v3}, Lcom/transsion/widgetslib/dialog/PromptController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 81
    iget-boolean v0, p0, Lcom/transsion/widgetslib/dialog/PromptParams;->mIsButtonVertical:Z

    invoke-virtual {p1, v0}, Lcom/transsion/widgetslib/dialog/PromptController;->setButtonVertical(Z)V

    .line 82
    iget v0, p0, Lcom/transsion/widgetslib/dialog/PromptParams;->mNoBtnInsets:I

    invoke-virtual {p1, v0}, Lcom/transsion/widgetslib/dialog/PromptController;->setNoBtnBottomInsets(I)V

    .line 83
    iget-boolean v0, p0, Lcom/transsion/widgetslib/dialog/PromptParams;->mIsMultiChoice:Z

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptParams;->mItems:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 85
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptParams;->mCheckedItems:[Z

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    invoke-virtual {p1, v0, v1, v2}, Lcom/transsion/widgetslib/dialog/PromptController;->setMultiChoiceList([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)V

    goto/16 :goto_2

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptParams;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_b

    .line 87
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptParams;->mLabelColumn:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptParams;->mIsCheckedColumn:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/widgetslib/dialog/PromptParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/transsion/widgetslib/dialog/PromptController;->setMultiChoiceList(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)V

    goto/16 :goto_2

    .line 90
    :cond_1
    iget-boolean v0, p0, Lcom/transsion/widgetslib/dialog/PromptParams;->mIsSingleChoice:Z

    if-eqz v0, :cond_6

    .line 91
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptParams;->mItems:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 92
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/widgetslib/dialog/PromptController;->setSingleChoiceList([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_2

    .line 93
    :cond_2
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptParams;->mRecyclerAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-nez v0, :cond_4

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_3

    goto :goto_0

    .line 99
    :cond_3
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptParams;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_b

    .line 100
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptParams;->mLabelColumn:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1, v2}, Lcom/transsion/widgetslib/dialog/PromptController;->setSingleChoiceList(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_2

    :cond_4
    :goto_0
    if-eqz v0, :cond_5

    .line 95
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/widgetslib/dialog/PromptController;->setSingleChoiceList(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_2

    .line 97
    :cond_5
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptParams;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/widgetslib/dialog/PromptController;->setSingleChoiceList(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_2

    .line 103
    :cond_6
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptParams;->mItems:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    .line 104
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/widgetslib/dialog/PromptController;->setList([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_2

    .line 105
    :cond_7
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptParams;->mRecyclerAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-nez v0, :cond_9

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_8

    goto :goto_1

    .line 111
    :cond_8
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptParams;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_b

    .line 112
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptParams;->mLabelColumn:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1, v2}, Lcom/transsion/widgetslib/dialog/PromptController;->setList(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_2

    :cond_9
    :goto_1
    if-eqz v0, :cond_a

    .line 107
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/widgetslib/dialog/PromptController;->setList(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_2

    .line 109
    :cond_a
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptParams;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/widgetslib/dialog/PromptController;->setList(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)V

    .line 115
    :cond_b
    :goto_2
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptParams;->mSingleCheckedText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_c

    .line 116
    iget-boolean v1, p0, Lcom/transsion/widgetslib/dialog/PromptParams;->mIsSingleChecked:Z

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1, v2}, Lcom/transsion/widgetslib/dialog/PromptController;->setSingleChecked(Ljava/lang/CharSequence;ZLandroid/content/DialogInterface$OnClickListener;)V

    .line 118
    :cond_c
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptParams;->mOnPrepareListViewListener:Lcom/transsion/widgetslib/dialog/PromptParams$OnPrepareListViewListener;

    if-eqz v0, :cond_d

    .line 119
    invoke-virtual {p1, v0}, Lcom/transsion/widgetslib/dialog/PromptController;->onPrepareListView(Lcom/transsion/widgetslib/dialog/PromptParams$OnPrepareListViewListener;)V

    .line 121
    :cond_d
    iget-boolean v0, p0, Lcom/transsion/widgetslib/dialog/PromptParams;->mIsSingleChoice:Z

    if-eqz v0, :cond_e

    .line 122
    iget v0, p0, Lcom/transsion/widgetslib/dialog/PromptParams;->mCheckedItem:I

    invoke-virtual {p1, v0}, Lcom/transsion/widgetslib/dialog/PromptController;->setCheckedItem(I)V

    .line 125
    :cond_e
    iget-boolean v0, p0, Lcom/transsion/widgetslib/dialog/PromptParams;->mAutoDismiss:Z

    invoke-virtual {p1, v0}, Lcom/transsion/widgetslib/dialog/PromptController;->setAutoDismiss(Z)V

    .line 126
    iget-boolean v0, p0, Lcom/transsion/widgetslib/dialog/PromptParams;->mIsInputDialog:Z

    invoke-virtual {p1, v0}, Lcom/transsion/widgetslib/dialog/PromptController;->setIsInputDialog(Z)V

    .line 127
    iget-boolean v0, p0, Lcom/transsion/widgetslib/dialog/PromptParams;->mIsAppDialogFragment:Z

    invoke-virtual {p1, v0}, Lcom/transsion/widgetslib/dialog/PromptController;->setIsAppDialogFragment(Z)V

    .line 128
    iget-boolean v0, p0, Lcom/transsion/widgetslib/dialog/PromptParams;->mCancelable:Z

    invoke-virtual {p1, v0}, Lcom/transsion/widgetslib/dialog/PromptController;->setCancelable(Z)V

    .line 129
    iget-boolean p0, p0, Lcom/transsion/widgetslib/dialog/PromptParams;->mCancelOutSide:Z

    invoke-virtual {p1, p0}, Lcom/transsion/widgetslib/dialog/PromptController;->setCanceledOnTouchOutside(Z)V

    return-void
.end method
