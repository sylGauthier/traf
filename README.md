## About

![Demo](https://sgauthier.fr/blog/img/traf.gif)

`traf` is a simple and elegant way of managing your TODO-list, per project or
globally.

Tasks are simple files split between `todo`, `wip` and `done` folders within a
`.traf` directory. The name of the file is the identifier of the task, a simple
integer that gets incremented with every new task, and the content is the title
of the task with an optional description.

Marking a task `todo`, `wip` or `done` is thus simply a matter of moving the
task file from one folder to the other.

When `traf` is called, it will first look for a `.traf` directory starting from
the current directory, going through all parent directories until it finds one
or `/` is reached, similarly to `git`.

Git can be used to sync tasks between computers and team members.

## How-to

### Dependencies

It requires [choice](https://pedantic.software/projects/choice.html) to
display/filter entries.

It also requires the `color.sh` script in your `$PATH`. You can get it from from
my [tool collection](https://github.com/sylGauthier/tools) (located in the `sh`
folder).

### Install

```bash
git clone https://github.com/sylGauthier/traf.git
cd traf
sudo ./install.sh
```

You can specify a `PREFIX` if you want to install it in a different directory
than the default (`/usr`).

### Init

When in the root directory of a project you wish to create a new traf listing
for, simply type:

```
traf init
```

This will create the `.traf` directory. To init git tracking as well, type:

```
traf git init
```

Optionally, to init `traf` from an already existing remote git repo, type:

```
traf init <git_repo_address>
```

Every time you create a new traf project, its location will be appended to
`$HOME/.traprojs`, so that `traf` can also list all tasks in all projects at
once.

### New task

```
traf todo "Task description"
```

### List tasks

Simply type `traf`.

### More info

```
man traf
```
