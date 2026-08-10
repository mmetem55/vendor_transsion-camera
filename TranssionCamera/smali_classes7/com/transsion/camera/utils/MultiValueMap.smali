.class public interface abstract Lcom/transsion/camera/utils/MultiValueMap;
.super Ljava/lang/Object;
.source "MultiValueMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract containsKey(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation
.end method

.method public abstract getValue(Ljava/lang/Object;I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)TV;"
        }
    .end annotation
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract keySet()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation
.end method

.method public abstract set(Ljava/lang/Object;ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)V"
        }
    .end annotation
.end method

.method public abstract set(Ljava/lang/Object;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/List<",
            "TV;>;)V"
        }
    .end annotation
.end method
