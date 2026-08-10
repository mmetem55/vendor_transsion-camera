.class Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$1;
.super Ljava/lang/Object;
.source "OSMaterialEditText.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$1;->this$0:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 230
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$1;->this$0:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-static {p0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->access$000(Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object p0

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
