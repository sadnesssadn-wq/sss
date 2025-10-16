.class public final Lc/d/d/x/b/j$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/d/x/b/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:I

.field public final b:[Lc/d/d/x/b/j$a;


# direct methods
.method public varargs constructor <init>(I[Lc/d/d/x/b/j$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lc/d/d/x/b/j$b;->a:I

    iput-object p2, p0, Lc/d/d/x/b/j$b;->b:[Lc/d/d/x/b/j$a;

    return-void
.end method
