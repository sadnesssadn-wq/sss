.class public Lb/i/j/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/i/l/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/i/l/a<",
        "Lb/i/j/j$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lb/i/j/c;


# direct methods
.method public constructor <init>(Lb/i/j/c;)V
    .locals 0

    iput-object p1, p0, Lb/i/j/g;->a:Lb/i/j/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lb/i/j/j$a;

    .line 1
    iget-object v0, p0, Lb/i/j/g;->a:Lb/i/j/c;

    invoke-virtual {v0, p1}, Lb/i/j/c;->a(Lb/i/j/j$a;)V

    return-void
.end method
