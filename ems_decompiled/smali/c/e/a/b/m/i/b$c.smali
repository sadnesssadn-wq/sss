.class public Lc/e/a/b/m/i/b$c;
.super Lc/e/a/b/m/i/b$b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/b/m/i/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/e/a/b/m/i/b<",
        "TE;>.b;"
    }
.end annotation


# instance fields
.field public final synthetic g:Lc/e/a/b/m/i/b;


# direct methods
.method public constructor <init>(Lc/e/a/b/m/i/b;Lc/e/a/b/m/i/b$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/b/m/i/b$c;->g:Lc/e/a/b/m/i/b;

    invoke-direct {p0, p1}, Lc/e/a/b/m/i/b$b;-><init>(Lc/e/a/b/m/i/b;)V

    return-void
.end method
