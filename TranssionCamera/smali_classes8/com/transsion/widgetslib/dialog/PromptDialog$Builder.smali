.class public Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
.super Ljava/lang/Object;
.source "PromptDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/dialog/PromptDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public final P:Lcom/transsion/widgetslib/dialog/PromptParams;

.field public dialog:Lcom/transsion/widgetslib/dialog/PromptDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 125
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v0, Lcom/transsion/widgetslib/dialog/PromptParams;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 130
    invoke-static {p1, p2}, Lcom/transsion/widgetslib/dialog/PromptDialog;->access$000(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    .line 131
    new-instance v1, Lcom/transsion/widgetslib/dialog/PromptDialog;

    iget-object v0, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/transsion/widgetslib/dialog/PromptDialog;->access$000(Landroid/content/Context;I)I

    move-result p1

    invoke-direct {v1, v0, p1}, Lcom/transsion/widgetslib/dialog/PromptDialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->dialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    return-void
.end method


# virtual methods
.method public create()Lcom/transsion/widgetslib/dialog/PromptDialog;
    .locals 5

    .line 434
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->dialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    invoke-static {v1}, Lcom/transsion/widgetslib/dialog/PromptDialog;->access$100(Lcom/transsion/widgetslib/dialog/PromptDialog;)Lcom/transsion/widgetslib/dialog/PromptController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptParams;->apply(Lcom/transsion/widgetslib/dialog/PromptController;)V

    .line 435
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->dialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iget-boolean v1, v1, Lcom/transsion/widgetslib/dialog/PromptParams;->mCancelable:Z

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 436
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->dialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iget-boolean v1, v1, Lcom/transsion/widgetslib/dialog/PromptParams;->mCancelOutSide:Z

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 437
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iget-boolean v1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mIsAppDialogFragment:Z

    if-nez v1, :cond_0

    .line 438
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->dialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    iget-object v0, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 439
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->dialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iget-object v1, v1, Lcom/transsion/widgetslib/dialog/PromptParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iget-object v0, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v0, :cond_1

    .line 442
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->dialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 444
    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iget-object v1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->dialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    iget-boolean v3, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mCancelable:Z

    iget-boolean v0, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mCancelOutSide:Z

    invoke-static {v2}, Lcom/transsion/widgetslib/dialog/PromptDialog;->access$100(Lcom/transsion/widgetslib/dialog/PromptDialog;)Lcom/transsion/widgetslib/dialog/PromptController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/widgetslib/dialog/PromptController;->haveInputAbility()Z

    move-result v4

    invoke-static {v1, v2, v3, v0, v4}, Lcom/transsion/widgetslib/util/Utils;->setDialogWindowBackGround(Landroid/content/Context;Landroid/app/Dialog;ZZZ)V

    .line 445
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->dialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptParams;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 274
    iput-object p2, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;",
            "Landroid/content/DialogInterface$OnClickListener;",
            ")",
            "Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;"
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mRecyclerAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 280
    iput-object p2, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setAutoDismiss(Z)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .locals 1

    .line 419
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput-boolean p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mAutoDismiss:Z

    return-object p0
.end method

.method public setButtonVertical(Z)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .locals 1

    .line 424
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput-boolean p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mIsButtonVertical:Z

    return-object p0
.end method

.method public setCancelable(Z)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput-boolean p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mCancelable:Z

    return-object p0
.end method

.method public setCanceledOnTouchOutside(Z)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput-boolean p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mCancelOutSide:Z

    return-object p0
.end method

.method public setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mCursor:Landroid/database/Cursor;

    .line 287
    iput-object p3, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mLabelColumn:Ljava/lang/String;

    .line 288
    iput-object p2, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setElegantTextHeight(Z)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput-boolean p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mElegant:Z

    return-object p0
.end method

.method public setIcon(I)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iget-object v1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setInitPositiveButtonEnable(Z)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .locals 1

    .line 429
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput-boolean p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mPositiveButtonEnable:Z

    return-object p0
.end method

.method public setInputDialog(Z)V
    .locals 0

    .line 405
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput-boolean p1, p0, Lcom/transsion/widgetslib/dialog/PromptParams;->mIsInputDialog:Z

    return-void
.end method

.method public setIsAppDialogFragment(Z)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .locals 1

    .line 409
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput-boolean p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mIsAppDialogFragment:Z

    return-object p0
.end method

.method public setItems(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .locals 2

    .line 261
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iget-object v1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mItems:[Ljava/lang/CharSequence;

    .line 262
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput-object p2, p1, Lcom/transsion/widgetslib/dialog/PromptParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mItems:[Ljava/lang/CharSequence;

    .line 268
    iput-object p2, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setMessage(I)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iget-object v1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .locals 2

    .line 307
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iget-object v1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mItems:[Ljava/lang/CharSequence;

    .line 308
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput-object p2, p1, Lcom/transsion/widgetslib/dialog/PromptParams;->mCheckedItems:[Z

    .line 309
    iput-object p3, p1, Lcom/transsion/widgetslib/dialog/PromptParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    const/4 p2, 0x1

    .line 310
    iput-boolean p2, p1, Lcom/transsion/widgetslib/dialog/PromptParams;->mIsMultiChoice:Z

    return-object p0
.end method

.method public setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mCursor:Landroid/database/Cursor;

    .line 334
    iput-object p2, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mIsCheckedColumn:Ljava/lang/String;

    .line 335
    iput-object p3, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mLabelColumn:Ljava/lang/String;

    .line 336
    iput-object p4, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    const/4 p1, 0x1

    .line 337
    iput-boolean p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mIsMultiChoice:Z

    return-object p0
.end method

.method public setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mItems:[Ljava/lang/CharSequence;

    .line 317
    iput-object p2, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mCheckedItems:[Z

    .line 318
    iput-object p3, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    const/4 p1, 0x1

    .line 319
    iput-boolean p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mIsMultiChoice:Z

    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iget-object v1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 213
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput-object p2, p1, Lcom/transsion/widgetslib/dialog/PromptParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 219
    iput-object p2, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iget-object v1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 225
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput-object p2, p1, Lcom/transsion/widgetslib/dialog/PromptParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 231
    iput-object p2, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNoBtnBottomInsets(I)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mNoBtnInsets:I

    return-object p0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-object p0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object p0
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object p0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iget-object v1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 185
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput-object p2, p1, Lcom/transsion/widgetslib/dialog/PromptParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setPositiveButton(IZLandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iget-object v1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 198
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput-object p3, p1, Lcom/transsion/widgetslib/dialog/PromptParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 199
    iput-boolean p2, p1, Lcom/transsion/widgetslib/dialog/PromptParams;->mIsAlert:Z

    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 191
    iput-object p2, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;ZLandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 206
    iput-object p3, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 207
    iput-boolean p2, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mIsAlert:Z

    return-object p0
.end method

.method public setSingleChecked(Ljava/lang/CharSequence;ZLandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mSingleCheckedText:Ljava/lang/CharSequence;

    .line 326
    iput-object p3, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 327
    iput-boolean p2, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mIsSingleChecked:Z

    return-object p0
.end method

.method public setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .locals 2

    .line 343
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iget-object v1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mItems:[Ljava/lang/CharSequence;

    .line 344
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput p2, p1, Lcom/transsion/widgetslib/dialog/PromptParams;->mCheckedItem:I

    .line 345
    iput-object p3, p1, Lcom/transsion/widgetslib/dialog/PromptParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 p2, 0x1

    .line 346
    iput-boolean p2, p1, Lcom/transsion/widgetslib/dialog/PromptParams;->mIsSingleChoice:Z

    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mCursor:Landroid/database/Cursor;

    .line 353
    iput p2, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mCheckedItem:I

    .line 354
    iput-object p3, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mLabelColumn:Ljava/lang/String;

    .line 355
    iput-object p4, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 p1, 0x1

    .line 356
    iput-boolean p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mIsSingleChoice:Z

    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 371
    iput p2, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mCheckedItem:I

    .line 372
    iput-object p3, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 p1, 0x1

    .line 373
    iput-boolean p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mIsSingleChoice:Z

    return-object p0
.end method

.method public setSingleChoiceItems(Landroidx/recyclerview/widget/RecyclerView$Adapter;ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;I",
            "Landroid/content/DialogInterface$OnClickListener;",
            ")",
            "Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;"
        }
    .end annotation

    .line 379
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mRecyclerAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 380
    iput p2, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mCheckedItem:I

    .line 381
    iput-object p3, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 p1, 0x1

    .line 382
    iput-boolean p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mIsSingleChoice:Z

    return-object p0
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mItems:[Ljava/lang/CharSequence;

    .line 363
    iput p2, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mCheckedItem:I

    .line 364
    iput-object p3, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 p1, 0x1

    .line 365
    iput-boolean p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mIsSingleChoice:Z

    return-object p0
.end method

.method public setTitle(I)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iget-object v1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTopTitle(I)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iget-object v1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mTopTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTopTitle(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mTopTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setView(I)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .locals 2

    .line 393
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mView:Landroid/view/View;

    .line 394
    iput p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mViewLayoutResId:I

    return-object p0
.end method

.method public setView(Landroid/view/View;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mView:Landroid/view/View;

    const/4 p1, 0x0

    .line 400
    iput p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mViewLayoutResId:I

    return-object p0
.end method

.method public show()Lcom/transsion/widgetslib/dialog/PromptDialog;
    .locals 0

    .line 449
    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->create()Lcom/transsion/widgetslib/dialog/PromptDialog;

    move-result-object p0

    .line 450
    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/PromptDialog;->show()V

    return-object p0
.end method
