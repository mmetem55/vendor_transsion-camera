.class Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterBlock;
.super Ljava/lang/Object;
.source "LetterSelectorLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LetterBlock"
.end annotation


# instance fields
.field public enable:Z

.field public index:I

.field public letter:Ljava/lang/String;

.field public letterNormalWidthHalf:F


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 1118
    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterBlock;->enable:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$1;)V
    .locals 0

    .line 1115
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterBlock;-><init>()V

    return-void
.end method
