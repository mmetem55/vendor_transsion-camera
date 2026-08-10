.class Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$TabOverflowPopupAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "OSTabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$TabOverflowPopupAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$TabOverflowPopupAdapter;

.field private title:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$TabOverflowPopupAdapter;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$TabOverflowPopupAdapter$ViewHolder;->this$1:Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$TabOverflowPopupAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$TabOverflowPopupAdapter;Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$1;)V
    .locals 0

    .line 322
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$TabOverflowPopupAdapter$ViewHolder;-><init>(Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$TabOverflowPopupAdapter;)V

    return-void
.end method

.method static synthetic access$400(Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$TabOverflowPopupAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 322
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$TabOverflowPopupAdapter$ViewHolder;->title:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$402(Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$TabOverflowPopupAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 322
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$TabOverflowPopupAdapter$ViewHolder;->title:Landroid/widget/TextView;

    return-object p1
.end method
