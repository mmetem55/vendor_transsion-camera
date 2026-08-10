.class public Lcom/transsion/sort/SortUtil;
.super Ljava/lang/Object;
.source "SortUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/sort/SortUtil$Comparable;,
        Lcom/transsion/sort/SortUtil$NameComparator;,
        Lcom/transsion/sort/SortUtil$NormalComparator;
    }
.end annotation


# instance fields
.field private mCachedKeys:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mLabels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mLocaleUtil:Lcom/transsion/sort/IContactLocale;

.field mNameComparator:Lcom/transsion/sort/SortUtil$NameComparator;

.field mNormalComparator:Lcom/transsion/sort/SortUtil$NormalComparator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/sort/SortUtil;->mCachedKeys:Ljava/util/HashMap;

    .line 26
    invoke-static {p1}, Lcom/transsion/sort/ContactLocaleHelper;->getContactLocaleUtils(Landroid/content/Context;)Lcom/transsion/sort/IContactLocale;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/sort/SortUtil;->mLocaleUtil:Lcom/transsion/sort/IContactLocale;

    .line 27
    invoke-interface {p1}, Lcom/transsion/sort/IContactLocale;->getLabels()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/sort/SortUtil;->mLabels:Ljava/util/ArrayList;

    .line 28
    new-instance p1, Lcom/transsion/sort/SortUtil$NameComparator;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/transsion/sort/SortUtil$NameComparator;-><init>(Lcom/transsion/sort/SortUtil;Lcom/transsion/sort/SortUtil$NameComparator;)V

    iput-object p1, p0, Lcom/transsion/sort/SortUtil;->mNameComparator:Lcom/transsion/sort/SortUtil$NameComparator;

    .line 29
    new-instance p1, Lcom/transsion/sort/SortUtil$NormalComparator;

    invoke-direct {p1, p0, v0}, Lcom/transsion/sort/SortUtil$NormalComparator;-><init>(Lcom/transsion/sort/SortUtil;Lcom/transsion/sort/SortUtil$NormalComparator;)V

    iput-object p1, p0, Lcom/transsion/sort/SortUtil;->mNormalComparator:Lcom/transsion/sort/SortUtil$NormalComparator;

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/transsion/sort/SortUtil;->mLabels:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/transsion/sort/SortUtil;->getLable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 60
    iget-object v1, p0, Lcom/transsion/sort/SortUtil;->mLabels:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Lcom/transsion/sort/SortUtil;->getLable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-eq v0, p0, :cond_0

    sub-int/2addr v0, p0

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public getLable(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/transsion/sort/SortUtil;->mCachedKeys:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/transsion/sort/SortUtil;->mLocaleUtil:Lcom/transsion/sort/IContactLocale;

    invoke-interface {v0, p1}, Lcom/transsion/sort/IContactLocale;->getLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    iget-object p0, p0, Lcom/transsion/sort/SortUtil;->mCachedKeys:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string p0, ""

    .line 39
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string v0, "#"

    :cond_1
    return-object v0
.end method

.method public sortString(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 51
    iget-object p0, p0, Lcom/transsion/sort/SortUtil;->mNameComparator:Lcom/transsion/sort/SortUtil$NameComparator;

    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method
