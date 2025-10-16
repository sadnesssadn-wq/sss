.class public Lc/d/a/c/c0/c;
.super Lb/b/p/i/g;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lb/b/p/i/g;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lb/b/p/i/g;->a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    check-cast p1, Lb/b/p/i/i;

    new-instance p2, Lc/d/a/c/c0/e;

    .line 1
    iget-object p3, p0, Lb/b/p/i/g;->a:Landroid/content/Context;

    .line 2
    invoke-direct {p2, p3, p0, p1}, Lc/d/a/c/c0/e;-><init>(Landroid/content/Context;Lc/d/a/c/c0/c;Lb/b/p/i/i;)V

    .line 3
    iput-object p2, p1, Lb/b/p/i/i;->o:Lb/b/p/i/r;

    .line 4
    iget-object p1, p1, Lb/b/p/i/i;->e:Ljava/lang/CharSequence;

    .line 5
    invoke-virtual {p2, p1}, Lb/b/p/i/r;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    return-object p2
.end method
