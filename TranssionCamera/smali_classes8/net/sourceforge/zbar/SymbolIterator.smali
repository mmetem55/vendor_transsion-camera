.class public Lnet/sourceforge/zbar/SymbolIterator;
.super Ljava/lang/Object;
.source "SymbolIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lnet/sourceforge/zbar/Symbol;",
        ">;"
    }
.end annotation


# instance fields
.field private current:Lnet/sourceforge/zbar/Symbol;


# direct methods
.method constructor <init>(Lnet/sourceforge/zbar/Symbol;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lnet/sourceforge/zbar/SymbolIterator;->current:Lnet/sourceforge/zbar/Symbol;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 0

    .line 45
    iget-object p0, p0, Lnet/sourceforge/zbar/SymbolIterator;->current:Lnet/sourceforge/zbar/Symbol;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0}, Lnet/sourceforge/zbar/SymbolIterator;->next()Lnet/sourceforge/zbar/Symbol;

    move-result-object p0

    return-object p0
.end method

.method public next()Lnet/sourceforge/zbar/Symbol;
    .locals 5

    .line 51
    iget-object v0, p0, Lnet/sourceforge/zbar/SymbolIterator;->current:Lnet/sourceforge/zbar/Symbol;

    if-eqz v0, :cond_1

    .line 56
    invoke-virtual {v0}, Lnet/sourceforge/zbar/Symbol;->next()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    .line 58
    new-instance v3, Lnet/sourceforge/zbar/Symbol;

    invoke-direct {v3, v1, v2}, Lnet/sourceforge/zbar/Symbol;-><init>(J)V

    iput-object v3, p0, Lnet/sourceforge/zbar/SymbolIterator;->current:Lnet/sourceforge/zbar/Symbol;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 60
    iput-object v1, p0, Lnet/sourceforge/zbar/SymbolIterator;->current:Lnet/sourceforge/zbar/Symbol;

    :goto_0
    return-object v0

    .line 52
    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string v0, "access past end of SymbolIterator"

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public remove()V
    .locals 1

    .line 67
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "SymbolIterator is immutable"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
