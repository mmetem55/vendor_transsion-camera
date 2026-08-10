.class public Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;
.super Landroid/widget/EditText;
.source "ExtendedEditText.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private mHasRegisterFocusChangeListener:Z

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/text/TextWatcher;",
            ">;"
        }
    .end annotation
.end field

.field private mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mSelfOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 20
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->mListeners:Ljava/util/ArrayList;

    .line 21
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 22
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->mSelfOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 20
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->mListeners:Ljava/util/ArrayList;

    .line 21
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 22
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->mSelfOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 20
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->mListeners:Ljava/util/ArrayList;

    .line 21
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 22
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->mSelfOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    return-void
.end method


# virtual methods
.method public addTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->mListeners:Ljava/util/ArrayList;

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-super {p0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public clearTextChangedListeners()V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 71
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/TextWatcher;

    .line 73
    invoke-super {p0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->mListeners:Ljava/util/ArrayList;

    :cond_1
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->mSelfOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    if-eqz v0, :cond_0

    .line 96
    invoke-interface {v0, p1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    .line 98
    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    if-eqz p0, :cond_1

    .line 99
    invoke-interface {p0, p1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    :cond_1
    return-void
.end method

.method public removeTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 60
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 64
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 2

    .line 83
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->mHasRegisterFocusChangeListener:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->mHasRegisterFocusChangeListener:Z

    .line 85
    invoke-super {p0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 86
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->mSelfOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->mHasRegisterFocusChangeListener:Z

    const/4 v0, 0x0

    .line 88
    invoke-super {p0, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 90
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    return-void
.end method

.method public setSelfOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 2

    .line 104
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->mHasRegisterFocusChangeListener:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 105
    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->mHasRegisterFocusChangeListener:Z

    .line 106
    invoke-super {p0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 107
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->mSelfOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 108
    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->mHasRegisterFocusChangeListener:Z

    const/4 v0, 0x0

    .line 109
    invoke-super {p0, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 111
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->mSelfOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    return-void
.end method
